type token =
  | TOK_call
  | TOK_cons
  | TOK_do
  | TOK_else
  | TOK_fi
  | TOK_from
  | TOK_hd
  | TOK_if
  | TOK_loop
  | TOK_nil
  | TOK_proc
  | TOK_return
  | TOK_show
  | TOK_then
  | TOK_tl
  | TOK_until
  | SYMB1
  | SYMB2
  | SYMB3
  | SYMB4
  | SYMB5
  | SYMB6
  | SYMB7
  | TOK_EOF
  | TOK_Ident of (string)
  | TOK_String of (string)
  | TOK_Integer of (int)
  | TOK_Double of (float)
  | TOK_Char of (char)
  | TOK_RIdent of (string)
  | TOK_Atom of (string)

open Parsing;;
let _ = parse_error;;
# 3 "ParRwhile.mly"
open AbsRwhile
open Lexing


# 42 "ParRwhile.ml"
let yytransl_const = [|
  257 (* TOK_call *);
  258 (* TOK_cons *);
  259 (* TOK_do *);
  260 (* TOK_else *);
  261 (* TOK_fi *);
  262 (* TOK_from *);
  263 (* TOK_hd *);
  264 (* TOK_if *);
  265 (* TOK_loop *);
  266 (* TOK_nil *);
  267 (* TOK_proc *);
  268 (* TOK_return *);
  269 (* TOK_show *);
  270 (* TOK_then *);
  271 (* TOK_tl *);
  272 (* TOK_until *);
  273 (* SYMB1 *);
  274 (* SYMB2 *);
  275 (* SYMB3 *);
  276 (* SYMB4 *);
  277 (* SYMB5 *);
  278 (* SYMB6 *);
  279 (* SYMB7 *);
  280 (* TOK_EOF *);
    0|]

let yytransl_block = [|
  281 (* TOK_Ident *);
  282 (* TOK_String *);
  283 (* TOK_Integer *);
  284 (* TOK_Double *);
  285 (* TOK_Char *);
  286 (* TOK_RIdent *);
  287 (* TOK_Atom *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\003\000\003\000\003\000\004\000\006\000\
\006\000\006\000\006\000\006\000\006\000\009\000\009\000\010\000\
\010\000\011\000\011\000\012\000\012\000\007\000\007\000\007\000\
\007\000\007\000\013\000\013\000\013\000\008\000\008\000\016\000\
\016\000\016\000\016\000\015\000\015\000\015\000\014\000\005\000\
\017\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\000\000\001\000\003\000\011\000\003\000\
\003\000\003\000\006\000\006\000\002\000\002\000\000\000\002\000\
\000\000\002\000\000\000\002\000\000\000\003\000\002\000\002\000\
\003\000\001\000\001\000\001\000\003\000\003\000\001\000\001\000\
\001\000\005\000\003\000\001\000\001\000\005\000\001\000\001\000\
\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\002\000\000\000\042\000\000\000\003\000\000\000\
\040\000\000\000\001\000\000\000\000\000\006\000\000\000\000\000\
\000\000\000\000\000\000\000\000\036\000\000\000\000\000\041\000\
\000\000\000\000\000\000\032\000\033\000\031\000\037\000\000\000\
\039\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\026\000\027\000\028\000\000\000\013\000\000\000\000\000\000\000\
\000\000\000\000\000\000\030\000\000\000\023\000\024\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\035\000\000\000\
\009\000\000\000\000\000\010\000\000\000\022\000\029\000\025\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\034\000\000\000\000\000\000\000\000\000\000\000\
\038\000\000\000\012\000\011\000\007\000"

let yydgoto = "\002\000\
\005\000\006\000\007\000\008\000\033\000\067\000\040\000\027\000\
\062\000\078\000\060\000\075\000\041\000\042\000\043\000\030\000\
\031\000"

let yysindex = "\016\000\
\032\255\000\000\000\000\247\254\000\000\001\255\000\000\010\255\
\000\000\012\255\000\000\029\255\247\254\000\000\031\255\126\255\
\247\254\006\255\128\255\128\255\000\000\128\255\004\255\000\000\
\034\255\041\255\043\255\000\000\000\000\000\000\000\000\044\255\
\000\000\006\255\021\255\021\255\021\255\128\255\021\255\072\255\
\000\000\000\000\000\000\068\255\000\000\069\255\067\255\128\255\
\094\255\004\255\247\254\000\000\021\255\000\000\000\000\074\255\
\067\255\021\255\126\255\082\255\126\255\090\255\000\000\248\254\
\000\000\079\255\084\255\000\000\086\255\000\000\000\000\000\000\
\084\255\126\255\087\255\084\255\126\255\104\255\248\254\092\255\
\247\254\126\255\000\000\084\255\128\255\084\255\128\255\067\255\
\000\000\095\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\089\255\000\000\000\000\000\000\000\000\000\000\000\000\091\255\
\000\000\000\000\000\000\089\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\096\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\254\
\000\000\000\000\000\000\076\255\000\000\000\000\097\255\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\099\255\000\000\000\000\103\255\000\000\115\255\000\000\000\000\
\000\000\000\000\037\255\000\000\000\000\000\000\000\000\000\000\
\040\255\000\000\000\000\081\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\105\255\000\000\117\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\117\000\000\000\252\255\002\000\237\255\244\255\
\000\000\000\000\000\000\000\000\112\000\049\000\010\000\242\255\
\000\000"

let yytablesize = 170
let yytable = "\010\000\
\044\000\021\000\045\000\034\000\017\000\018\000\017\000\019\000\
\015\000\079\000\046\000\025\000\032\000\021\000\019\000\021\000\
\001\000\026\000\056\000\052\000\009\000\023\000\024\000\023\000\
\011\000\029\000\012\000\029\000\065\000\013\000\021\000\003\000\
\047\000\009\000\024\000\009\000\024\000\068\000\038\000\004\000\
\008\000\008\000\004\000\029\000\025\000\008\000\069\000\057\000\
\018\000\016\000\009\000\024\000\008\000\048\000\025\000\018\000\
\025\000\049\000\029\000\029\000\073\000\051\000\076\000\050\000\
\028\000\091\000\028\000\092\000\029\000\025\000\029\000\028\000\
\025\000\080\000\059\000\084\000\090\000\025\000\086\000\015\000\
\015\000\061\000\028\000\029\000\014\000\014\000\029\000\063\000\
\088\000\064\000\074\000\029\000\071\000\077\000\017\000\018\000\
\081\000\028\000\028\000\019\000\082\000\020\000\085\000\021\000\
\083\000\066\000\022\000\028\000\087\000\028\000\089\000\023\000\
\004\000\093\000\005\000\033\000\039\000\028\000\021\000\017\000\
\020\000\016\000\028\000\009\000\024\000\028\000\017\000\018\000\
\014\000\035\000\028\000\019\000\000\000\020\000\036\000\021\000\
\000\000\021\000\022\000\000\000\000\000\000\000\037\000\023\000\
\000\000\038\000\053\000\054\000\055\000\039\000\058\000\000\000\
\000\000\000\000\000\000\009\000\024\000\009\000\024\000\000\000\
\000\000\000\000\000\000\000\000\070\000\000\000\000\000\000\000\
\000\000\072\000"

let yycheck = "\004\000\
\020\000\010\001\022\000\018\000\001\001\002\001\001\001\009\001\
\013\000\018\001\023\000\016\000\017\000\010\001\016\001\010\001\
\001\000\016\000\038\000\034\000\030\001\018\001\031\001\018\001\
\024\001\016\000\017\001\018\000\048\000\018\001\010\001\000\001\
\023\000\030\001\031\001\030\001\031\001\050\000\018\001\011\001\
\004\001\005\001\011\001\034\000\049\000\009\001\051\000\038\000\
\009\001\019\001\030\001\031\001\016\001\020\001\059\000\016\001\
\061\000\017\001\049\000\050\000\059\000\018\001\061\000\021\001\
\016\000\085\000\018\000\087\000\059\000\074\000\061\000\023\000\
\077\000\064\000\003\001\074\000\081\000\082\000\077\000\004\001\
\005\001\014\001\034\000\074\000\004\001\005\001\077\000\019\001\
\079\000\023\001\009\001\082\000\019\001\004\001\001\001\002\001\
\018\001\049\000\050\000\006\001\017\001\008\001\016\001\010\001\
\019\001\012\001\013\001\059\000\005\001\061\000\019\001\018\001\
\024\001\019\001\024\001\019\001\021\001\019\001\016\001\005\001\
\016\001\005\001\074\000\030\001\031\001\077\000\001\001\002\001\
\012\000\002\001\082\000\006\001\255\255\008\001\007\001\010\001\
\255\255\010\001\013\001\255\255\255\255\255\255\015\001\018\001\
\255\255\018\001\035\000\036\000\037\000\022\001\039\000\255\255\
\255\255\255\255\255\255\030\001\031\001\030\001\031\001\255\255\
\255\255\255\255\255\255\255\255\053\000\255\255\255\255\255\255\
\255\255\058\000"

let yynames_const = "\
  TOK_call\000\
  TOK_cons\000\
  TOK_do\000\
  TOK_else\000\
  TOK_fi\000\
  TOK_from\000\
  TOK_hd\000\
  TOK_if\000\
  TOK_loop\000\
  TOK_nil\000\
  TOK_proc\000\
  TOK_return\000\
  TOK_show\000\
  TOK_then\000\
  TOK_tl\000\
  TOK_until\000\
  SYMB1\000\
  SYMB2\000\
  SYMB3\000\
  SYMB4\000\
  SYMB5\000\
  SYMB6\000\
  SYMB7\000\
  TOK_EOF\000\
  "

let yynames_block = "\
  TOK_Ident\000\
  TOK_String\000\
  TOK_Integer\000\
  TOK_Double\000\
  TOK_Char\000\
  TOK_RIdent\000\
  TOK_Atom\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'program) in
    Obj.repr(
# 33 "ParRwhile.mly"
                           ( _1 )
# 241 "ParRwhile.ml"
               : AbsRwhile.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "ParRwhile.mly"
          ( raise (BNFC_Util.Parse_error (Parsing.symbol_start_pos (), Parsing.symbol_end_pos ())) )
# 247 "ParRwhile.ml"
               : AbsRwhile.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_list) in
    Obj.repr(
# 37 "ParRwhile.mly"
                    ( Prog _1 )
# 254 "ParRwhile.ml"
               : 'program))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "ParRwhile.mly"
                        ( []  )
# 260 "ParRwhile.ml"
               : 'proc_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 41 "ParRwhile.mly"
         ( (fun x -> [x]) _1 )
# 267 "ParRwhile.ml"
               : 'proc_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'proc) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'proc_list) in
    Obj.repr(
# 42 "ParRwhile.mly"
                         ( (fun (x,xs) -> x::xs) (_1, _3) )
# 275 "ParRwhile.ml"
               : 'proc_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 9 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 7 : 'rIdent) in
    let _6 = (Parsing.peek_val __caml_parser_env 5 : 'com) in
    let _10 = (Parsing.peek_val __caml_parser_env 1 : 'rIdent) in
    Obj.repr(
# 45 "ParRwhile.mly"
                                                                                  ( Proc (_2, _4, _6, _10) )
# 285 "ParRwhile.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 48 "ParRwhile.mly"
                    ( CSeq (_1, _3) )
# 293 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'rIdent) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 49 "ParRwhile.mly"
                     ( CAsn (_1, _3) )
# 301 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pat) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'pat) in
    Obj.repr(
# 50 "ParRwhile.mly"
                  ( CRep (_1, _3) )
# 309 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'thenBranch) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'elseBranch) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 51 "ParRwhile.mly"
                                                ( CCond (_2, _3, _4, _6) )
# 319 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'doBranch) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'loopBranch) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 52 "ParRwhile.mly"
                                                   ( CLoop (_2, _3, _4, _6) )
# 329 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 53 "ParRwhile.mly"
                 ( CShow _2 )
# 336 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 56 "ParRwhile.mly"
                          ( BThen _2 )
# 343 "ParRwhile.ml"
               : 'thenBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 57 "ParRwhile.mly"
                ( BThenNone  )
# 349 "ParRwhile.ml"
               : 'thenBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 60 "ParRwhile.mly"
                          ( BElse _2 )
# 356 "ParRwhile.ml"
               : 'elseBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "ParRwhile.mly"
                ( BElseNone  )
# 362 "ParRwhile.ml"
               : 'elseBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 64 "ParRwhile.mly"
                      ( BDo _2 )
# 369 "ParRwhile.ml"
               : 'doBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "ParRwhile.mly"
                ( BDoNone  )
# 375 "ParRwhile.ml"
               : 'doBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 68 "ParRwhile.mly"
                          ( BLoop _2 )
# 382 "ParRwhile.ml"
               : 'loopBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "ParRwhile.mly"
                ( BLoopNone  )
# 388 "ParRwhile.ml"
               : 'loopBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 72 "ParRwhile.mly"
                         ( ECons (_2, _3) )
# 396 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 73 "ParRwhile.mly"
                ( EHd _2 )
# 403 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 74 "ParRwhile.mly"
                ( ETl _2 )
# 410 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 75 "ParRwhile.mly"
                    ( EEq (_2, _3) )
# 418 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 76 "ParRwhile.mly"
         (  _1 )
# 425 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 79 "ParRwhile.mly"
                ( EVar _1 )
# 432 "ParRwhile.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'valT) in
    Obj.repr(
# 80 "ParRwhile.mly"
         ( EVal _1 )
# 439 "ParRwhile.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 81 "ParRwhile.mly"
                    (  _2 )
# 446 "ParRwhile.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'pat1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'pat1) in
    Obj.repr(
# 84 "ParRwhile.mly"
                         ( PCons (_2, _3) )
# 454 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'pat1) in
    Obj.repr(
# 85 "ParRwhile.mly"
         (  _1 )
# 461 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 88 "ParRwhile.mly"
                ( PVar _1 )
# 468 "ParRwhile.ml"
               : 'pat1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'valT) in
    Obj.repr(
# 89 "ParRwhile.mly"
         ( PVal _1 )
# 475 "ParRwhile.ml"
               : 'pat1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'rIdent) in
    Obj.repr(
# 90 "ParRwhile.mly"
                                       ( PCall (_2, _4) )
# 483 "ParRwhile.ml"
               : 'pat1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'pat) in
    Obj.repr(
# 91 "ParRwhile.mly"
                    (  _2 )
# 490 "ParRwhile.ml"
               : 'pat1))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "ParRwhile.mly"
               ( VNil  )
# 496 "ParRwhile.ml"
               : 'valT))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 95 "ParRwhile.mly"
         ( VAtom _1 )
# 503 "ParRwhile.ml"
               : 'valT))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'valT) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'valT) in
    Obj.repr(
# 96 "ParRwhile.mly"
                                ( VCons (_2, _4) )
# 511 "ParRwhile.ml"
               : 'valT))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rIdent) in
    Obj.repr(
# 99 "ParRwhile.mly"
                  ( Var _1 )
# 518 "ParRwhile.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 103 "ParRwhile.mly"
                    ( RIdent (_1))
# 525 "ParRwhile.ml"
               : 'rIdent))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 104 "ParRwhile.mly"
                ( Atom (_1))
# 532 "ParRwhile.ml"
               : 'atom))
(* Entry pProgram *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let pProgram (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : AbsRwhile.program)
