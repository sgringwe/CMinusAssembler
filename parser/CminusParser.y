/*******************************************************/
/*                     Cminus Parser                   */
/*                                                     */
/*******************************************************/

/*********************DEFINITIONS***********************/
%{
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include <string.h>
#include <util/general.h>
#include <util/symtab.h>
#include <util/symtab_stack.h>
#include <util/dlink.h>
#include <util/string_utils.h>
#include <codegen/symfields.h>
#include <codegen/types.h>
#include <codegen/codegen.h>
#include <codegen/reg.h>

#define SYMTABLE_SIZE 100

/*********************EXTERNAL DECLARATIONS***********************/

EXTERN(void,Cminus_error,(char*));

EXTERN(int,Cminus_lex,(void));

// Contains core information
SymTable symtab;

// Grows with scope
SymtabStack symtabStack;

static DList instList;
static DList dataList;

char *fileName;

static int functionOffset;
int globalOffset = 0;
static char* functionName;
static int currentFuncDeclOffset = 0;

extern union YYSTYPE yylval;

extern int Cminus_lineno;

static void initSymTable() {
  SymInitField(currentSymtab(symtabStack),SYMTAB_OFFSET_FIELD,(Generic)-1,NULL);
  SymInitField(currentSymtab(symtabStack),SYMTAB_REGISTER_INDEX_FIELD,(Generic)-1,NULL);

  int intIndex = SymIndex(currentSymtab(symtabStack),SYMTAB_INTEGER_TYPE_STRING);
  int errorIndex = SymIndex(currentSymtab(symtabStack),SYMTAB_ERROR_TYPE_STRING);
  int voidIndex = SymIndex(currentSymtab(symtabStack),SYMTAB_VOID_TYPE_STRING);

  SymPutFieldByIndex(currentSymtab(symtabStack),intIndex,SYMTAB_SIZE_FIELD,(Generic)INTEGER_SIZE);
  SymPutFieldByIndex(currentSymtab(symtabStack),errorIndex,SYMTAB_SIZE_FIELD,(Generic)0);
  SymPutFieldByIndex(currentSymtab(symtabStack),voidIndex,SYMTAB_SIZE_FIELD,(Generic)0);

  SymPutFieldByIndex(currentSymtab(symtabStack),intIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)INTEGER_TYPE);
  SymPutFieldByIndex(currentSymtab(symtabStack),errorIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)ERROR_TYPE);
  SymPutFieldByIndex(currentSymtab(symtabStack),voidIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)VOID_TYPE);
}

static void deleteSymTable() {
    SymKillField(currentSymtab(symtabStack),SYMTAB_REGISTER_INDEX_FIELD);
    SymKillField(currentSymtab(symtabStack),SYMTAB_OFFSET_FIELD);
    SymKill(currentSymtab(symtabStack));
}

%}

%name-prefix="Cminus_"
%defines

%start Program

%token AND
%token ELSE
%token EXIT
%token FLOAT
%token FOR
%token IF 		
%token INTEGER 
%token NOT 		
%token OR 		
%token READ
%token WHILE
%token WRITE
%token LBRACE
%token RBRACE
%token LE
%token LT
%token GE
%token GT
%token EQ
%token NE
%token ASSIGN
%token COMMA
%token SEMICOLON
%token LBRACKET
%token RBRACKET
%token LPAREN
%token RPAREN
%token PLUS
%token TIMES
%token IDENTIFIER
%token DIVIDE
%token RETURN
%token STRING	
%token INTCON
%token FLOATCON
%token MINUS

%left OR
%left AND
%left NOT
%left LT LE GT GE NE EQ
%left PLUS MINUS
%left TIMES DIVDE

%union {
	char*	name;
	int     symIndex;
	DList	idList;
	int 	offset;
}

%type <idList> IdentifierList
%type <symIndex> Type TestAndThen Test WhileExpr WhileToken Expr SimpleExpr AddExpr
%type <symIndex> MulExpr Factor Variable StringConstant Constant VarDecl FunctionDecl ProcedureHead
%type <offset> DeclList
%type <name> IDENTIFIER STRING FLOATCON INTCON 

/***********************PRODUCTIONS****************************/
%%
Program		: Procedures 
		{
			emitDataPrologue(dataList);
			emitInstructions(instList);
		}
	  	| DeclList Procedures
		{
			globalOffset = $1;
			emitDataPrologue(dataList);
			emitInstructions(instList);
		}
          ;

Procedures 	: ProcedureDecl Procedures
    {
      // printf("<<Procedures  : ProcedureDecl Procedures\n");
    }
	   	|
    {
      // printf("<<Procedures\n");
    }
	   	;

ProcedureDecl : ProcedureHead ProcedureBody
    {
      // printf("<<ProcedureDecl : ProcedureHead ProcedureBody\n");
      emitExit(instList,symtab,$1);

      deleteSymTable();
      endScope(symtabStack);
      currentFuncDeclOffset = 0;
    }
	      ;

ProcedureHead : FunctionDecl DeclList 
		{
			// printf("ProcedureHead : FunctionDecl DeclList is %i\n", $1);
			emitProcedurePrologue(instList,symtab,$1);
			functionOffset = $2;

			$$ = $1;
		}
	      | FunctionDecl
		{
			// printf("ProcedureHead : FunctionDecl is %i\n", $1);
			emitProcedurePrologue(instList,symtab,$1);
			functionOffset = 0;
			$$ = $1;
		}
              ;

FunctionDecl :  Type IDENTIFIER LPAREN RPAREN LBRACE 
		{
			$$ = SymIndex(symtab,$2);

      beginScope(symtabStack);
      initSymTable();
      currentFuncDeclOffset = -4;
      // SymInitField(table,SYMTAB_REGISTER_INDEX_FIELD,(Generic)-1,NULL);
			// printf("<<FunctionDecl :  Type IDENTIFIER LPAREN RPAREN LBRACE\n");
		}
	      	;

ProcedureBody : StatementList RBRACE
    {
      // printf("<<ProcedureBody : StatementList RBRACE\n");
    }
	      ;


DeclList 	: Type IdentifierList  SEMICOLON 
		{
      // printf("Declaration list with stack size %i\n", (stackSize(symtabStack)));
			AddIdStructPtr data = (AddIdStructPtr)malloc(sizeof(AddIdStruct));
			data->offset = currentFuncDeclOffset;
			currentFuncDeclOffset += (int)SymGetFieldByIndex(currentSymtab(symtabStack),$1,SYMTAB_SIZE_FIELD);
      // printf("offset is %i\n", data->offset);
			data->symtab = currentSymtab(symtabStack);
      data->typeIndex = $1;
      data->isLocal = (stackSize(symtabStack) > 1) ? 1 : 0;
			dlinkApply1($2,(DLinkApply1Func)addIdToSymtab,(Generic)data);
			$$ = data->offset;
			dlinkFreeNodes($2);
			free(data);
      // int index = SymQueryIndex((SymTable)currentSymtab(symtabStack),"b");
      // printf("b index for current is %d\n", index);
      // index = SymQueryIndex((SymTable)currentSymtab(symtabStack),"a");
      // printf("a index for current is %d\n", index);

      // index = SymQueryIndex((SymTable)findSymtab(symtabStack, "b"),"b");
      // printf("b in general is is %d\n", index);
      // index = SymQueryIndex((SymTable)findSymtab(symtabStack, "a"),"a");
      // printf("a in general is is %d\n", index);

		}		
	   	| DeclList Type IdentifierList SEMICOLON
	 	{
	 		// printf("Declaration list with stack size %i\n", (stackSize(symtabStack)));
      // printf("Declearation list long\n");
			AddIdStructPtr data = (AddIdStructPtr)malloc(sizeof(AddIdStruct));
			data->offset = $1;
			currentFuncDeclOffset += (int)SymGetFieldByIndex(currentSymtab(symtabStack),$1,SYMTAB_SIZE_FIELD);
			// printf("offset is %i\n", data->offset);
			data->typeIndex = $2;
			data->symtab = currentSymtab(symtabStack);
      data->isLocal = (stackSize(symtabStack) > 1) ? 1 : 0;
			dlinkApply1($3,(DLinkApply1Func)addIdToSymtab,(Generic)data);
			$$ = data->offset;
			dlinkFreeNodes($3);
			free(data);
	 	}
          	;


IdentifierList 	: VarDecl  
		{
			$$ = dlinkListAlloc(NULL);
			dlinkAppend($$,dlinkNodeAlloc((Generic)$1));
		}
						
                | IdentifierList COMMA VarDecl
		{
			dlinkAppend($1,dlinkNodeAlloc((Generic)$3));
			$$ = $1;
		}
                ;

VarDecl 	: IDENTIFIER
		{ 
      // printf("vardeclaration of %s\n", $1);
			$$ = SymIndex(currentSymtab(symtabStack),$1);
		}
		| IDENTIFIER LBRACKET INTCON RBRACKET
		{
			int symIndex = SymIndex(symtab,$3);
    	char* numElemString = 
    		(char*)SymGetFieldByIndex(symtab,symIndex,SYM_NAME_FIELD);
    		
    	char* typeString = 
    		nssave(4,SYMTAB_VOID_TYPE_STRING,"[",numElemString,"]");
    		
    	int typeIndex = SymIndex(symtab,typeString);
    	SymPutFieldByIndex(symtab,typeIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)VOID_TYPE);
    	
    	int numElements = atoi(numElemString);
    	SymPutFieldByIndex(symtab,typeIndex,SYMTAB_SIZE_FIELD,(Generic)(VOID_SIZE*numElements));
    					   
    	sfree(typeString);

			symIndex = SymIndex(symtab,$1);
                	SymPutFieldByIndex(symtab,symIndex,SYMTAB_TYPE_INDEX_FIELD,(Generic)typeIndex);

			$$ = symIndex;		  
		}
		;

Type     	: INTEGER 
                {
                        $$ = SymQueryIndex(symtab,SYMTAB_INTEGER_TYPE_STRING);
                }
                | FLOAT   
                ;

Statement 	: Assignment
                | IfStatement
		| WhileStatement
                | IOStatement 
		| ReturnStatement
		| ExitStatement	
		| CompoundStatement
                ;

Assignment      : Variable ASSIGN Expr SEMICOLON
		{
      // printf("Assigning %i to be %i\n", $1, $3);
			emitAssignment(instList,symtab,$1,$3);
		}
                ;

IfStatement	: IF TestAndThen ELSE CompoundStatement
		{
			emitEndBranchTarget(instList,symtab,$2);
		}
		| IF TestAndThen
		{
			emitEndBranchTarget(instList,symtab,$2);
		}
		;
		
				
TestAndThen	: Test CompoundStatement
		{
		   	$$ = emitThenBranch(instList,symtab,$1);
		}
		;
				
Test		: LPAREN Expr RPAREN
		{
			$$ = emitIfTest(instList,symtab,$2);
		}
		;
	

WhileStatement  : WhileToken WhileExpr Statement
		{
			emitWhileLoopBackBranch(instList,symtab,$1,$2);
		}
                ;
                
WhileExpr	: LPAREN Expr RPAREN
		{
			$$ = emitWhileLoopTest(instList,symtab,$2);
		}
		;
				
WhileToken	: WHILE
		{
			$$ = emitWhileLoopLandingPad(instList,symtab);
		}
		;
				
IOStatement     : READ LPAREN Variable RPAREN SEMICOLON
		{
			emitReadVariable(instList,symtab,$3);
		}
                | WRITE LPAREN Expr RPAREN SEMICOLON
		{
			emitWriteExpression(instList,symtab,$3,SYSCALL_PRINT_INTEGER);
		}
                | WRITE LPAREN StringConstant RPAREN SEMICOLON         
		{
			emitWriteExpression(instList,symtab,$3,SYSCALL_PRINT_STRING);
		}
                ;

ReturnStatement : RETURN Expr SEMICOLON
    {
      emitReturnExpression(instList,symtab,$2);
    }
                ;

ExitStatement 	: EXIT SEMICOLON
		{
			emitExit(instList);
		}
		;

CompoundStatement : LBRACE StatementList RBRACE
                ;

StatementList   : Statement
		
                | StatementList Statement
		
                ;

Expr            : SimpleExpr
		{
			$$ = $1; 
		}
                | Expr OR SimpleExpr 
		{
			$$ = emitOrExpression(instList,symtab,$1,$3);
		}
                | Expr AND SimpleExpr 
		{
			$$ = emitAndExpression(instList,symtab,$1,$3);
		}
                | NOT SimpleExpr 
		{
			$$ = emitNotExpression(instList,symtab,$2);
		}
                ;

SimpleExpr	: AddExpr
		{
			$$ = $1; 
		}
                | SimpleExpr EQ AddExpr
		{
			$$ = emitEqualExpression(instList,symtab,$1,$3);
		}
                | SimpleExpr NE AddExpr
		{
			$$ = emitNotEqualExpression(instList,symtab,$1,$3);
		}
                | SimpleExpr LE AddExpr
		{
			$$ = emitLessEqualExpression(instList,symtab,$1,$3);
		}
                | SimpleExpr LT AddExpr
		{
			$$ = emitLessThanExpression(instList,symtab,$1,$3);
		}
                | SimpleExpr GE AddExpr
		{
			$$ = emitGreaterEqualExpression(instList,symtab,$1,$3);
		}
                | SimpleExpr GT AddExpr
		{
			$$ = emitGreaterThanExpression(instList,symtab,$1,$3);
		}
                ;

AddExpr		:  MulExpr            
		{
			$$ = $1; 
		}
                |  AddExpr PLUS MulExpr
		{
			$$ = emitAddExpression(instList,symtab,$1,$3);
		}
                |  AddExpr MINUS MulExpr
		{
			$$ = emitSubtractExpression(instList,symtab,$1,$3);
		}
                ;

MulExpr		:  Factor
		{
			$$ = $1; 
		}
                |  MulExpr TIMES Factor
		{
			$$ = emitMultiplyExpression(instList,symtab,$1,$3);
		}
                |  MulExpr DIVIDE Factor
		{
			$$ = emitDivideExpression(instList,symtab,$1,$3);
		}		
                ;
				
Factor          : Variable
		{ 
			$$ = emitLoadVariable(instList,symtab,$1);
		}
                | Constant
		{ 
			$$ = $1;
		}
                | IDENTIFIER LPAREN RPAREN
		{
			int symIndex = SymIndex(symtab,$1);
			$$ = emitFunctionCall(instList,symtab,symIndex);
		}
         	| LPAREN Expr RPAREN
		{
			$$ = $2;
		}
                ;  

Variable        : IDENTIFIER
		{
			SymTable tab = findSymtab(symtabStack, $1);
			int symIndex = SymQueryIndex(tab,$1); 
			$$ = emitComputeVariableAddress(instList,symtab,symIndex,tab);
		}
                | IDENTIFIER LBRACKET Expr RBRACKET    
		{
			SymTable tab = findSymtab(symtabStack, $1);
			int symIndex = SymQueryIndex(symtab,$1);
			$$ = emitComputeArrayAddress(instList,symtab,symIndex,symtab,$3);	
		}
                ;			       

StringConstant 	: STRING
		{ 
			int symIndex = SymIndex(symtab,$1);
			$$ = emitLoadStringConstantAddress(instList,dataList,symtab,symIndex); 
		}
                ;

Constant        :  INTCON
		{ 
			int symIndex = SymIndex(symtab,$1);
			$$ = emitLoadIntegerConstant(instList,symtab,symIndex); 
		}
                ;

%%


/********************C ROUTINES *********************************/

void Cminus_error(char *s)
{
  fprintf(stderr,"%s: line %d: %s\n",fileName,Cminus_lineno,s);
}

int Cminus_wrap() {
	return 1;
}

// static void initSymTable() {
//   SymInitField(symtab,SYMTAB_OFFSET_FIELD,(Generic)-1,NULL);
// 	SymInitField(symtab,SYMTAB_REGISTER_INDEX_FIELD,(Generic)-1,NULL);

// 	int intIndex = SymIndex(symtab,SYMTAB_INTEGER_TYPE_STRING);
//   int errorIndex = SymIndex(symtab,SYMTAB_ERROR_TYPE_STRING);
//   int voidIndex = SymIndex(symtab,SYMTAB_VOID_TYPE_STRING);

//   SymPutFieldByIndex(symtab,intIndex,SYMTAB_SIZE_FIELD,(Generic)INTEGER_SIZE);
//   SymPutFieldByIndex(symtab,errorIndex,SYMTAB_SIZE_FIELD,(Generic)0);
//   SymPutFieldByIndex(symtab,voidIndex,SYMTAB_SIZE_FIELD,(Generic)0);

//   SymPutFieldByIndex(symtab,intIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)INTEGER_TYPE);
//   SymPutFieldByIndex(symtab,errorIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)ERROR_TYPE);
//   SymPutFieldByIndex(symtab,voidIndex,SYMTAB_BASIC_TYPE_FIELD,(Generic)VOID_TYPE);
// }

// static void deleteSymTable() {
//     SymKillField(symtab,SYMTAB_REGISTER_INDEX_FIELD);
//     SymKillField(symtab,SYMTAB_OFFSET_FIELD);
//     SymKill(symtab);

// }

static void initialize(char* inputFileName) {

	stdin = freopen(inputFileName,"r", stdin);
        if (stdin == NULL) {
          fprintf(stderr,"Error: Could not open file %s\n",inputFileName);
          exit(-1);
        }

	char* dotChar = rindex(inputFileName,'.');
	int endIndex = strlen(inputFileName) - strlen(dotChar);
	char *outputFileName = nssave(2,substr(inputFileName,0,endIndex),".s");
	stdout = freopen(outputFileName,"w", stdout);
        if (stdout == NULL) {
          fprintf(stderr,"Error: Could not open file %s\n",outputFileName);
          exit(-1);
       } 

  symtabStack = symtabStackInit();

  // Begin global scope
  symtab = beginScope(symtabStack);
	initSymTable();
	
	initRegisters();
	
	instList = dlinkListAlloc(NULL);
	dataList = dlinkListAlloc(NULL);

}

static void finalize() {

    fclose(stdin);
    /*fclose(stdout);*/
    
    // end global scope
    deleteSymTable();
    symtab = endScope(symtabStack);
 
    cleanupRegisters();
    
    dlinkFreeNodesAndAtoms(instList);
    dlinkFreeNodesAndAtoms(dataList);

}

int main(int argc, char** argv)

{	
	fileName = argv[1];
	initialize(fileName);
	
  Cminus_parse();
  
  finalize();
  
  return 0;
}
/******************END OF C ROUTINES**********************/
