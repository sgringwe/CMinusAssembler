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

#define SYMTABLE_SIZE 100
#define SYMTAB_VALUE_FIELD     "value"

/*********************EXTERNAL DECLARATIONS***********************/

EXTERN(void,Cminus_error,(char*));

EXTERN(int,Cminus_lex,(void));

char *fileName;

SymTable symtab;

extern int Cminus_lineno;

// CONSTANTS
const char *ASSEMBLY_HEADER =
" .section        .rodata\n";

const char *BASIC_PRINTFS =
".int_wformat: .string \"%d\\n\"\n"
".str_wformat: .string \"%s\\n\"\n"
".int_rformat: .string \"%d\"\n";

const char *OTHER = 
" .text\n"
" .globl main\n"
" .type main,@function\n"
"main:   nop\n"
" pushq %rbp\n"
" movq %rsp, %rbp\n";

const char *ASSEMBLY_FOOTER =
" leave\n"
" ret\n";

int var_count;
int str_const_count;
char statements[99999]; // TODO: FIX
char printfs[9999]; // List of printf options

// Register management
int REGISTER_COUNT = 10; // eax esi and edi are reserved for calls. ebx is reserved for lots of ops
char *register_names[10] = { "%ecx", "%edx", "%r8d", "%r9d", "%r10d", "%r11d", "%r12d", "%r13d", "%r14d", "%r15d" };
int register_taken[10];

%}

%name-prefix="Cminus_"
%defines

%start Program

%token AND
%token ELSE
%token EXIT
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
%token MINUS

%left OR
%left AND
%left NOT
%left LT LE GT GE NE EQ
%left PLUS MINUS
%left TIMES DIVDE

/***********************PRODUCTIONS****************************/
%%
   Program      : Procedures 
        {
            //printf("<Program> -> <Procedures>\n");
        }
        | DeclList Procedures
        {
            //printf("<Program> -> <DeclList> <Procedures>\n");
        }
          ;

Procedures  : ProcedureDecl Procedures
        {
            //printf("<Procedures> -> <ProcedureDecl> <Procedures>\n");
        }
        |
        {
            //printf("<Procedures> -> epsilon\n");
        }
        ;

ProcedureDecl : ProcedureHead ProcedureBody
        {
            //printf("<ProcedureDecl> -> <ProcedureHead> <ProcedureBody>\n");
        }
              ;

ProcedureHead : FunctionDecl DeclList 
        {
            //printf("<ProcedureHead> -> <FunctionDecl> <DeclList>\n");
        }
          | FunctionDecl
        {
            //printf("<ProcedureHead> -> <FunctionDecl>\n");
        }
              ;

FunctionDecl :  Type IDENTIFIER LPAREN RPAREN LBRACE 
        {
            //printf("<FunctionDecl> ->  <Type> <IDENTIFIER> <LP> <RP> <LBR>\n"); 
        }
            ;

ProcedureBody : StatementList RBRACE
        {
            //printf("<ProcedureBody> -> <StatementList> <RBR>\n");
        }
          ;


DeclList    : Type IdentifierList  SEMICOLON 
        {
            //printf("<DeclList> -> <Type> <IdentifierList> <SC>\n");
        }       
        | DeclList Type IdentifierList SEMICOLON
        {
            //printf("<DeclList> -> <DeclList> <Type> <IdentifierList> <SC>\n");
        }
            ;


IdentifierList  : VarDecl  
        {
            //printf("<IdentifierList> -> <VarDecl>\n");
        }
                        
                | IdentifierList COMMA VarDecl
        {
            //printf("<IdentifierList> -> <IdentifierList> <CM> <VarDecl>\n");
        }
                ;

VarDecl     : IDENTIFIER
        { 
            setValue($1, var_count * 4);
            ++var_count;
            // printf("<VarDecl> -> <IDENTIFIER\n");
        }
        | IDENTIFIER LBRACKET INTCON RBRACKET
                {
            //printf("<VarDecl> -> <IDENTIFIER> <LBK> <INTCON> <RBK>\n");
        }
        ;

Type        : INTEGER 
        { 
            //printf("<Type> -> <INTEGER>\n");
        }
                ;

Statement   : Assignment
        { 
            //printf("<Statement> -> <Assignment>\n");
        }
                | IfStatement
        { 
            //printf("<Statement> -> <IfStatement>\n");
        }
        | WhileStatement
        { 
            //printf("<Statement> -> <WhileStatement>\n");
        }
                | IOStatement 
        { 
            //printf("<Statement> -> <IOStatement>\n");
        }
        | ReturnStatement
        { 
            //printf("<Statement> -> <ReturnStatement>\n");
        }
        | ExitStatement 
        { 
            //printf("<Statement> -> <ExitStatement>\n");
        }
        | CompoundStatement
        { 
            //printf("<Statement> -> <CompoundStatement>\n");
        }
                ;

Assignment      : Variable ASSIGN Expr SEMICOLON
        {
            int offset = getValue($1);
            char temp[80];

            emit("movq", "$_gp", "%rbx"); // set %rbx reg to equal _gp

            sprintf(temp, "$%d", offset);
            emit("addq", temp, "%rbx"); // add offset to %rbx to move to correct memory location for variable
            emit("movl", register_names[$3], "(%rbx)");

            // printf("freeing both registers\n");
            freeRegister($3);

            // freeRegister(reg1);


            // setValue($1, $3);
            //printf("<Assignment> -> <Variable> <ASSIGN> <Expr> <SC>\n");
        }
                ;
                
IfStatement : IF TestAndThen ELSE CompoundStatement
        {
            //printf("<IfStatement> -> <IF> <TestAndThen> <ELSE> <CompoundStatement>\n");
        }
        | IF TestAndThen
        {
            //printf("<IfStatement> -> <IF> <TestAndThen>\n");
        }
        ;
        
                
TestAndThen : Test CompoundStatement
        {
            //printf("<TestAndThen> -> <Test> <CompoundStatement>\n");
        }
        ;
                
Test        : LPAREN Expr RPAREN
        {
            //printf("<Test> -> <LP> <Expr> <RP>\n");
        }
        ;
    

WhileStatement  : WhileToken WhileExpr Statement
        {
            //printf("<WhileStatement> -> <WhileToken> <WhileExpr> <Statement>\n");
        }
                ;
                
WhileExpr   : LPAREN Expr RPAREN
        {
            //printf("<WhileExpr> -> <LP> <Expr> <RP>\n");
        }
        ;
                
WhileToken  : WHILE
        {
            //printf("<WhileToken> -> <WHILE>\n");
        }
        ;


IOStatement     : READ LPAREN Variable RPAREN SEMICOLON
        {
            //printf("<IOStatement> -> <READ> <LP> <Variable> <RP> <SC>\n");
        }
                | WRITE LPAREN Expr RPAREN SEMICOLON
        {
            emit("movl", register_names[$3], "%esi");
            emit("movl", "$0", "%eax");
            buffer("movl $.int_wformat, %edi\n"); // TODO: Pick correct string constant
            buffer("call printf\n");

            freeRegister($3);
            //printf("<IOStatement> -> <WRITE> <LP> <Expr> <RP> <SC>\n");
        }
                | WRITE LPAREN StringConstant RPAREN SEMICOLON         
        {
            // First add this constant to list of printf constants
            sprintf(printfs, "%s.string_const%d:    .string \"%s\"\n", printfs, str_const_count, (char *)SymGetFieldByIndex(symtab, $3, SYM_NAME_FIELD)); // TODO: escape stuff out of $3
            
            char temp[80];
            sprintf(temp, "movl $.string_const%d, %%esi\n", str_const_count);
            buffer(temp);

            // emit("movl", register_names[reg1], "%esi");
            emit("movl", "$0", "%eax");
            buffer("movl $.str_wformat, %edi\n"); // TODO: Pick correct string constant
            buffer("call printf\n");

            ++str_const_count;
            ////printf("<IOStatement> -> <WRITE> <LP> <StringConstant> <RP> <SC>\n");
        }
                ;

ReturnStatement : RETURN Expr SEMICOLON
        {
            //printf("<ReturnStatement> -> <RETURN> <Expr> <SC>\n");
        }
                ;

ExitStatement   : EXIT SEMICOLON
        {
            //printf("<ExitStatement> -> <EXIT> <SC>\n");
        }
        ;

CompoundStatement : LBRACE StatementList RBRACE
        {
            //printf("<CompoundStatement> -> <LBR> <StatementList> <RBR>\n");
        }
                ;

StatementList   : Statement
        {       
            //printf("<StatementList> -> <Statement>\n");
        }
                | StatementList Statement
        {       
            //printf("<StatementList> -> <StatementList> <Statement>\n");
        }
                ;

Expr            : SimpleExpr
        {
            $$ = $1;
            //printf("<Expr> -> <SimpleExpr>\n");
        }
                | Expr OR SimpleExpr 
        {
                emit("orl", register_names[$1], register_names[$3]);
                freeRegister($1);

                $$ = $3;
            //printf("<Expr> -> <Expr> <OR> <SimpleExpr> \n");
        }
                | Expr AND SimpleExpr 
        {
                emit("andl", register_names[$1], register_names[$3]);
                freeRegister($1);

                $$ = $3;
            //printf("<Expr> -> <Expr> <AND> <SimpleExpr> \n");
        }
                | NOT SimpleExpr 
        {
                int reg = allocateRegister();

                emit("movl", "$1", register_names[reg]);
                emit("xorl", register_names[reg], register_names[$2]);
                freeRegister(reg);

                $$ = $2;
            //printf("<Expr> -> <NOT> <SimpleExpr> \n");
        }
                ;

SimpleExpr  : AddExpr
        {
            $$ = $1;
            //printf("<SimpleExpr> -> <AddExpr>\n");
        }
                | SimpleExpr EQ AddExpr
        {
                int temp = allocateRegister();

                // cmpl %edx, %ecx
                // movl $0, %ecx
                // movl $1, %ebx
                // cmovg %ebx, %ecx
                emit("cmpl", register_names[$1], register_names[$3]);
                emit("movl", "$0", register_names[$3]);
                emit("movl", "$1", register_names[temp]);
                emit("cmove", register_names[temp], register_names[$3]);

                freeRegister(temp);
                freeRegister($1);

                $$ = $3;
            //printf("<SimpleExpr> -> <SimpleExpr> <EQ> <AddExpr> \n");
        }
                | SimpleExpr NE AddExpr
        {
                int temp = allocateRegister();

                // cmpl %edx, %ecx
                // movl $0, %ecx
                // movl $1, %ebx
                // cmovg %ebx, %ecx
                emit("cmpl", register_names[$1], register_names[$3]);
                emit("movl", "$0", register_names[$3]);
                emit("movl", "$1", register_names[temp]);
                emit("cmovne", register_names[temp], register_names[$3]);

                freeRegister(temp);
                freeRegister($1);

                $$ = $3;
            //printf("<SimpleExpr> -> <SimpleExpr> <NE> <AddExpr> \n");
        }
                | SimpleExpr LE AddExpr
        {
                int temp = allocateRegister();

                // cmpl %edx, %ecx
                // movl $0, %ecx
                // movl $1, %ebx
                // cmovg %ebx, %ecx
                emit("cmpl", register_names[$3], register_names[$1]);
                emit("movl", "$0", register_names[$1]);
                emit("movl", "$1", register_names[temp]);
                emit("cmovle", register_names[temp], register_names[$1]);

                freeRegister(temp);
                freeRegister($3);

                $$ = $1;
            //printf("<SimpleExpr> -> <SimpleExpr> <LE> <AddExpr> \n");
        }
                | SimpleExpr LT AddExpr
        {
                int temp = allocateRegister();

                // cmpl %edx, %ecx
                // movl $0, %ecx
                // movl $1, %ebx
                // cmovg %ebx, %ecx
                emit("cmpl", register_names[$3], register_names[$1]);
                emit("movl", "$0", register_names[$1]);
                emit("movl", "$1", register_names[temp]);
                emit("cmovl", register_names[temp], register_names[$1]);

                freeRegister(temp);
                freeRegister($3);

                $$ = $1;
            //printf("<SimpleExpr> -> <SimpleExpr> <LT> <AddExpr> \n");
        }
                | SimpleExpr GE AddExpr
        {
                int temp = allocateRegister();

                // cmpl %edx, %ecx
                // movl $0, %ecx
                // movl $1, %ebx
                // cmovg %ebx, %ecx
                emit("cmpl", register_names[$3], register_names[$1]);
                emit("movl", "$0", register_names[$1]);
                emit("movl", "$1", register_names[temp]);
                emit("cmovge", register_names[temp], register_names[$1]);

                freeRegister(temp);
                freeRegister($3);

                $$ = $1;
            //printf("<SimpleExpr> -> <SimpleExpr> <GE> <AddExpr> \n");
        }
                | SimpleExpr GT AddExpr
        {
            //printf("<SimpleExpr> -> <SimpleExpr> <GT> <AddExpr> \n");
                int temp = allocateRegister();

                // cmpl %edx, %ecx
                // movl $0, %ecx
                // movl $1, %ebx
                // cmovg %ebx, %ecx
                emit("cmpl", register_names[$3], register_names[$1]);
                emit("movl", "$0", register_names[$1]);
                emit("movl", "$1", register_names[temp]);
                emit("cmovg", register_names[temp], register_names[$1]);

                freeRegister(temp);
                freeRegister($3);

                $$ = $1;
        }
                ;

AddExpr     :  MulExpr            
        {
            $$ = $1;
            //printf("<AddExpr> -> <MulExpr>\n");
        }
                |  AddExpr PLUS MulExpr
        {
            // $$ = $1 + $3;
            // addl %edx, %ecx
            emit("addl", register_names[$1], register_names[$3]);

            freeRegister($1);

            $$ = $3;
            //printf("<AddExpr> -> <AddExpr> <PLUS> <MulExpr> \n");
        }
                |  AddExpr MINUS MulExpr
        {
            // $$ = $1 - $3;
            // subl %edx, %ecx
            emit("subl", register_names[$3], register_names[$1]);

            freeRegister($3);

            $$ = $1;
            //printf("<AddExpr> -> <AddExpr> <MINUS> <MulExpr> \n");
        }
                ;

MulExpr     :  Factor
        {
            $$ = $1;
            //printf("<MulExpr> -> <Factor>\n");
        }
                |  MulExpr TIMES Factor
        {
            $$ = $1 * $3;
            //printf("<MulExpr> -> <MulExpr> <TIMES> <Factor> \n");
        }
                |  MulExpr DIVIDE Factor
        {
            $$ = $1 / $3;
            //printf("<MulExpr> -> <MulExpr> <DIVIDE> <Factor> \n");
        }       
                ;
                
Factor          : Variable
        { 
            int offset = getValue($1);

            int resultReg = loadFromMemory(offset);

            // printf("for variable: %d\n", resultReg);
            $$ = resultReg;

            //printf("<Factor> -> <Variable>\n");
        }
                | Constant
        { 
            $$ = $1;
            //printf("<Factor> -> <Constant>\n");
        }
                | IDENTIFIER LPAREN RPAREN
            {   
            //printf("<Factor> -> <IDENTIFIER> <LP> <RP>\n");
        }
            | LPAREN Expr RPAREN
        {
            $$ = $2;
            //printf("<Factor> -> <LP> <Expr> <RP>\n");
        }
                ;  

Variable        : IDENTIFIER
        {
            $$ = $1;
            //printf("<Variable> -> <IDENTIFIER>\n");
        }
                | IDENTIFIER LBRACKET Expr RBRACKET    
                {
            //printf("<Variable> -> <IDENTIFIER> <LBK> <Expr> <RBK>\n");
                }
                ;                  

StringConstant  : STRING
        { 
               $$ = $1;
            //printf("<StringConstant> -> <STRING>\n");
        }
                ;

Constant        : INTCON
        { 
            // load constant into a register
            int reg = allocateRegister();

            char temp[80];
            sprintf(temp, "$%d", $1);

            emit("movl", temp, register_names[reg]);
            // printf("for const: %d\n", reg);
            $$ = reg;
            //printf("<Constant> -> <INTCON>\n");
        }
                ;

%%


/********************C ROUTINES *********************************/


// Returns the index of the register we are using. Index maps to register_names.
// Returns an index of a free register
int allocateRegister() {
    int i = 0;
    for(i = 0; i < REGISTER_COUNT; ++i) {
        if(register_taken[i] == 0) {
            register_taken[i] = 1;
            return i;
        }
    }

    Cminus_error("No registers remaining for allocation.");
    return -1;
}

// loads variable from memory at the given offset into a register
//
// Example:
// movq $_gp,%rbx
// addq $4, %rbx
// movl (%rbx), %eax
// we return the equivelant of eax (could be any register)
int loadFromMemory(int offset) {
    int reg2 = allocateRegister();

    char temp[80];

    emit("movq", "$_gp", "%rbx"); // set %rbx reg to equal _gp

    sprintf(temp, "$%d", offset);
    emit("addq", temp, "%rbx"); // add offset to %rbx to move to correct memory location for variable
    emit("movl", "(%rbx)", register_names[reg2]); // store the memory location of rbx in eax

    return reg2; // reg2 now holds the location of the variable we want
}

void freeRegister(int index) {
    register_taken[index] = 0;
}

void emit(char *instruction, char *one, char *two) {
    char temp[80];
    sprintf(temp, "%s %s, %s\n", instruction, one, two);
    buffer(temp);
}

void buffer(char *add) {
    sprintf(statements, "%s %s", statements, add);
}

void Cminus_error(char *s)
{
  fprintf(stderr,"%s: line %d: %s\n",fileName,Cminus_lineno,s);
}

int Cminus_wrap() {
    return 1;
}

static void initialize(char* inputFileName) {

    stdin = freopen(inputFileName,"r",stdin);
    if (stdin == NULL) {
        fprintf(stderr,"Error: Could not open file %s\n",inputFileName);
        exit(-1);
    }

    char* dotChar = rindex(inputFileName,'.');
    int endIndex = strlen(inputFileName) - strlen(dotChar);
    char *outputFileName = nssave(2,substr(inputFileName,0,endIndex),".s");
    stdout = freopen(outputFileName,"w",stdout);
    if (stdout == NULL) {
        fprintf(stderr,"Error: Could not open file %s\n",outputFileName);
        exit(-1);
    }

    // We keep track of variable count for header global data declaration
    var_count = 0;
    str_const_count = 0;

    // Print out the initial header every file has
    printf("%s", ASSEMBLY_HEADER);
    printf("%s", BASIC_PRINTFS);

    symtab = SymInit(SYMTABLE_SIZE);
    SymInitField(symtab,SYMTAB_VALUE_FIELD,(Generic)-1,NULL);
}

static void finalize() {
    printf("%s", printfs);
    printf("  .comm _gp, %d, 4\n", var_count * 4);
    printf("%s", OTHER);
    printf("%s", statements);
    printf("%s", ASSEMBLY_FOOTER);

    SymKillField(symtab,SYMTAB_VALUE_FIELD);
    SymKill(symtab);
    fclose(stdin);
    fclose(stdout);
}

int main(int argc, char** argv)

{   
    fileName = argv[1];
    initialize(fileName);
    
        Cminus_parse();
  
    finalize();
  
    return 0;
}

int getValue(int index)
{
  return (int)SymGetFieldByIndex(symtab, index, SYMTAB_VALUE_FIELD);
}

int setValue(int index, int value)
{
  SymPutFieldByIndex(symtab, index, SYMTAB_VALUE_FIELD, (Generic)value); 
}
/******************END OF C ROUTINES**********************/
