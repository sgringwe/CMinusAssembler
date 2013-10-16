/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     AND = 258,
     ELSE = 259,
     EXIT = 260,
     FLOAT = 261,
     FOR = 262,
     IF = 263,
     INTEGER = 264,
     NOT = 265,
     OR = 266,
     READ = 267,
     WHILE = 268,
     WRITE = 269,
     LBRACE = 270,
     RBRACE = 271,
     LE = 272,
     LT = 273,
     GE = 274,
     GT = 275,
     EQ = 276,
     NE = 277,
     ASSIGN = 278,
     COMMA = 279,
     SEMICOLON = 280,
     LBRACKET = 281,
     RBRACKET = 282,
     LPAREN = 283,
     RPAREN = 284,
     PLUS = 285,
     TIMES = 286,
     IDENTIFIER = 287,
     DIVIDE = 288,
     RETURN = 289,
     STRING = 290,
     INTCON = 291,
     FLOATCON = 292,
     MINUS = 293,
     DIVDE = 294
   };
#endif
/* Tokens.  */
#define AND 258
#define ELSE 259
#define EXIT 260
#define FLOAT 261
#define FOR 262
#define IF 263
#define INTEGER 264
#define NOT 265
#define OR 266
#define READ 267
#define WHILE 268
#define WRITE 269
#define LBRACE 270
#define RBRACE 271
#define LE 272
#define LT 273
#define GE 274
#define GT 275
#define EQ 276
#define NE 277
#define ASSIGN 278
#define COMMA 279
#define SEMICOLON 280
#define LBRACKET 281
#define RBRACKET 282
#define LPAREN 283
#define RPAREN 284
#define PLUS 285
#define TIMES 286
#define IDENTIFIER 287
#define DIVIDE 288
#define RETURN 289
#define STRING 290
#define INTCON 291
#define FLOATCON 292
#define MINUS 293
#define DIVDE 294




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 96 "CminusParser.y"
{
	char*	name;
	int     symIndex;
	DList	idList;
	int 	offset;
}
/* Line 1529 of yacc.c.  */
#line 134 "CminusParser.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE Cminus_lval;

