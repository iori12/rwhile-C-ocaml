type token =
  | TOK_atom
  | TOK_call
  | TOK_cons
  | TOK_do
  | TOK_else
  | TOK_eval
  | TOK_fi
  | TOK_from
  | TOK_func
  | TOK_hd
  | TOK_if
  | TOK_loop
  | TOK_nil
  | TOK_not
  | TOK_proc
  | TOK_return
  | TOK_show
  | TOK_then
  | TOK_tl
  | TOK_uncall
  | TOK_until
  | SYMB1
  | SYMB2
  | SYMB3
  | SYMB4
  | SYMB5
  | SYMB6
  | SYMB7
  | SYMB8
  | SYMB9
  | SYMB10
  | SYMB11
  | SYMB12
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


# 52 "ParRwhile.ml"
let yytransl_const = [|
  257 (* TOK_atom *);
  258 (* TOK_call *);
  259 (* TOK_cons *);
  260 (* TOK_do *);
  261 (* TOK_else *);
  262 (* TOK_eval *);
  263 (* TOK_fi *);
  264 (* TOK_from *);
  265 (* TOK_func *);
  266 (* TOK_hd *);
  267 (* TOK_if *);
  268 (* TOK_loop *);
  269 (* TOK_nil *);
  270 (* TOK_not *);
  271 (* TOK_proc *);
  272 (* TOK_return *);
  273 (* TOK_show *);
  274 (* TOK_then *);
  275 (* TOK_tl *);
  276 (* TOK_uncall *);
  277 (* TOK_until *);
  278 (* SYMB1 *);
  279 (* SYMB2 *);
  280 (* SYMB3 *);
  281 (* SYMB4 *);
  282 (* SYMB5 *);
  283 (* SYMB6 *);
  284 (* SYMB7 *);
  285 (* SYMB8 *);
  286 (* SYMB9 *);
  287 (* SYMB10 *);
  288 (* SYMB11 *);
  289 (* SYMB12 *);
  290 (* TOK_EOF *);
    0|]

let yytransl_block = [|
  291 (* TOK_Ident *);
  292 (* TOK_String *);
  293 (* TOK_Integer *);
  294 (* TOK_Double *);
  295 (* TOK_Char *);
  296 (* TOK_RIdent *);
  297 (* TOK_Atom *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\003\000\005\000\005\000\005\000\
\006\000\006\000\011\000\011\000\011\000\011\000\011\000\009\000\
\009\000\013\000\013\000\014\000\014\000\015\000\015\000\016\000\
\016\000\010\000\010\000\012\000\012\000\012\000\012\000\012\000\
\012\000\012\000\012\000\012\000\012\000\012\000\012\000\012\000\
\012\000\017\000\017\000\017\000\008\000\008\000\008\000\008\000\
\008\000\008\000\004\000\004\000\004\000\018\000\007\000\019\000\
\000\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\001\000\001\000\000\000\001\000\003\000\
\008\000\006\000\003\000\003\000\006\000\006\000\002\000\000\000\
\003\000\002\000\000\000\002\000\000\000\002\000\000\000\002\000\
\000\000\006\000\002\000\002\000\002\000\003\000\002\000\002\000\
\005\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\001\000\001\000\001\000\003\000\005\000\001\000\001\000\001\000\
\005\000\005\000\001\000\001\000\005\000\001\000\001\000\001\000\
\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\002\000\000\000\000\000\057\000\000\000\
\005\000\000\000\004\000\051\000\000\000\056\000\058\000\000\000\
\052\000\055\000\000\000\000\000\001\000\000\000\000\000\003\000\
\000\000\000\000\008\000\000\000\000\000\048\000\000\000\000\000\
\054\000\000\000\046\000\047\000\000\000\000\000\000\000\000\000\
\000\000\000\000\016\000\053\000\000\000\000\000\000\000\000\000\
\000\000\010\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\043\000\000\000\041\000\042\000\
\027\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\049\000\050\000\045\000\029\000\000\000\000\000\031\000\028\000\
\032\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\009\000\015\000\000\000\
\000\000\017\000\030\000\000\000\044\000\036\000\034\000\035\000\
\037\000\038\000\039\000\040\000\000\000\016\000\000\000\016\000\
\000\000\011\000\012\000\000\000\000\000\000\000\016\000\000\000\
\000\000\016\000\000\000\033\000\026\000\000\000\000\000\000\000\
\000\000\014\000\013\000"

let yydgoto = "\003\000\
\007\000\015\000\008\000\069\000\009\000\010\000\033\000\079\000\
\051\000\050\000\080\000\070\000\121\000\131\000\119\000\128\000\
\071\000\072\000\017\000"

let yysindex = "\019\000\
\064\255\012\255\000\000\000\000\221\254\221\254\000\000\232\254\
\000\000\018\255\000\000\000\000\043\255\000\000\000\000\013\255\
\000\000\000\000\028\255\039\255\000\000\250\254\026\255\000\000\
\037\255\037\255\000\000\043\255\221\254\000\000\221\254\037\255\
\000\000\051\255\000\000\000\000\057\255\058\255\066\255\068\255\
\060\255\069\255\000\000\000\000\037\255\037\255\037\255\175\255\
\175\255\000\000\206\255\071\255\073\255\074\255\031\255\031\255\
\221\254\031\255\031\255\031\255\175\255\031\255\031\255\031\255\
\031\255\031\255\031\255\031\255\000\000\082\255\000\000\000\000\
\000\000\175\255\175\255\037\255\175\255\076\255\077\255\080\255\
\000\000\000\000\000\000\000\000\031\255\081\255\000\000\000\000\
\000\000\026\255\085\255\031\255\031\255\031\255\031\255\031\255\
\031\255\031\255\069\255\101\255\088\255\000\000\000\000\175\255\
\037\255\000\000\000\000\175\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\102\255\000\000\098\255\000\000\
\107\255\000\000\000\000\089\255\069\255\219\255\000\000\093\255\
\219\255\000\000\108\255\000\000\000\000\219\255\175\255\219\255\
\175\255\000\000\000\000"

let yyrindex = "\000\000\
\092\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\096\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\092\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\097\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\057\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\246\254\036\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\113\255\000\000\
\112\255\000\000\000\000\000\000\000\000\001\255\000\000\000\000\
\083\255\000\000\000\000\000\000\000\000\117\255\000\000\115\255\
\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\000\000\002\000\124\000\000\000\251\255\023\000\
\212\255\176\255\000\000\213\255\000\000\000\000\000\000\000\000\
\077\000\238\255\247\255"

let yytablesize = 260
let yytable = "\019\000\
\020\000\023\000\005\000\016\000\018\000\073\000\035\000\035\000\
\006\000\021\000\023\000\011\000\022\000\035\000\023\000\036\000\
\036\000\091\000\117\000\001\000\002\000\022\000\036\000\039\000\
\012\000\040\000\035\000\035\000\035\000\038\000\100\000\101\000\
\035\000\103\000\013\000\036\000\036\000\036\000\029\000\022\000\
\019\000\036\000\019\000\012\000\133\000\078\000\024\000\034\000\
\037\000\030\000\025\000\086\000\014\000\061\000\041\000\012\000\
\031\000\035\000\028\000\032\000\122\000\026\000\090\000\004\000\
\124\000\013\000\036\000\052\000\053\000\054\000\018\000\014\000\
\005\000\126\000\042\000\129\000\018\000\014\000\006\000\048\000\
\043\000\044\000\134\000\014\000\049\000\136\000\035\000\018\000\
\045\000\018\000\046\000\138\000\047\000\139\000\081\000\036\000\
\082\000\083\000\102\000\099\000\104\000\106\000\105\000\108\000\
\118\000\120\000\125\000\035\000\109\000\127\000\035\000\130\000\
\132\000\135\000\137\000\035\000\036\000\035\000\021\000\036\000\
\078\000\020\000\054\000\078\000\036\000\006\000\036\000\123\000\
\078\000\007\000\078\000\084\000\085\000\025\000\087\000\088\000\
\089\000\024\000\092\000\093\000\094\000\095\000\096\000\097\000\
\098\000\027\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\107\000\000\000\000\000\000\000\000\000\000\000\000\000\
\110\000\111\000\112\000\113\000\114\000\115\000\116\000\055\000\
\000\000\056\000\000\000\000\000\057\000\000\000\000\000\000\000\
\058\000\000\000\000\000\012\000\059\000\000\000\000\000\000\000\
\000\000\060\000\000\000\000\000\000\000\061\000\000\000\000\000\
\062\000\063\000\064\000\065\000\066\000\067\000\068\000\029\000\
\000\000\000\000\000\000\000\000\000\000\074\000\018\000\014\000\
\075\000\000\000\030\000\000\000\029\000\076\000\077\000\000\000\
\000\000\031\000\074\000\000\000\032\000\075\000\000\000\030\000\
\000\000\000\000\000\000\077\000\000\000\000\000\031\000\000\000\
\000\000\032\000\000\000\000\000\000\000\018\000\014\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\018\000\014\000"

let yycheck = "\005\000\
\006\000\012\001\009\001\002\000\040\001\049\000\025\000\026\000\
\015\001\034\001\021\001\000\001\012\001\032\000\013\000\025\000\
\026\000\061\000\099\000\001\000\002\000\021\001\032\000\029\000\
\013\001\031\000\045\000\046\000\047\000\028\000\074\000\075\000\
\051\000\077\000\023\001\045\000\046\000\047\000\002\001\022\001\
\005\001\051\000\007\001\013\001\125\000\051\000\034\001\025\000\
\026\000\013\001\023\001\057\000\041\001\023\001\032\000\013\001\
\020\001\076\000\033\001\023\001\104\000\023\001\061\000\000\001\
\108\000\023\001\076\000\045\000\046\000\047\000\040\001\041\001\
\009\001\118\000\024\001\120\000\040\001\041\001\015\001\011\001\
\024\001\024\001\127\000\041\001\016\001\130\000\105\000\005\001\
\023\001\007\001\023\001\135\000\033\001\137\000\024\001\105\000\
\024\001\024\001\076\000\018\001\025\001\022\001\026\001\023\001\
\004\001\018\001\005\001\126\000\024\001\012\001\129\000\005\001\
\024\001\021\001\007\001\134\000\126\000\136\000\007\001\129\000\
\126\000\007\001\026\001\129\000\134\000\034\001\136\000\105\000\
\134\000\034\001\136\000\055\000\056\000\021\001\058\000\059\000\
\060\000\021\001\062\000\063\000\064\000\065\000\066\000\067\000\
\068\000\022\000\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\085\000\255\255\255\255\255\255\255\255\255\255\255\255\
\092\000\093\000\094\000\095\000\096\000\097\000\098\000\001\001\
\255\255\003\001\255\255\255\255\006\001\255\255\255\255\255\255\
\010\001\255\255\255\255\013\001\014\001\255\255\255\255\255\255\
\255\255\019\001\255\255\255\255\255\255\023\001\255\255\255\255\
\026\001\027\001\028\001\029\001\030\001\031\001\032\001\002\001\
\255\255\255\255\255\255\255\255\255\255\008\001\040\001\041\001\
\011\001\255\255\013\001\255\255\002\001\016\001\017\001\255\255\
\255\255\020\001\008\001\255\255\023\001\011\001\255\255\013\001\
\255\255\255\255\255\255\017\001\255\255\255\255\020\001\255\255\
\255\255\023\001\255\255\255\255\255\255\040\001\041\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\040\001\041\001"

let yynames_const = "\
  TOK_atom\000\
  TOK_call\000\
  TOK_cons\000\
  TOK_do\000\
  TOK_else\000\
  TOK_eval\000\
  TOK_fi\000\
  TOK_from\000\
  TOK_func\000\
  TOK_hd\000\
  TOK_if\000\
  TOK_loop\000\
  TOK_nil\000\
  TOK_not\000\
  TOK_proc\000\
  TOK_return\000\
  TOK_show\000\
  TOK_then\000\
  TOK_tl\000\
  TOK_uncall\000\
  TOK_until\000\
  SYMB1\000\
  SYMB2\000\
  SYMB3\000\
  SYMB4\000\
  SYMB5\000\
  SYMB6\000\
  SYMB7\000\
  SYMB8\000\
  SYMB9\000\
  SYMB10\000\
  SYMB11\000\
  SYMB12\000\
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
# 39 "ParRwhile.mly"
                           ( _1 )
# 315 "ParRwhile.ml"
               : AbsRwhile.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "ParRwhile.mly"
          ( raise (BNFC_Util.Parse_error (Parsing.symbol_start_pos (), Parsing.symbol_end_pos ())) )
# 321 "ParRwhile.ml"
               : AbsRwhile.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'valT) in
    Obj.repr(
# 42 "ParRwhile.mly"
                     ( _1 )
# 328 "ParRwhile.ml"
               : AbsRwhile.valT))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "ParRwhile.mly"
          ( raise (BNFC_Util.Parse_error (Parsing.symbol_start_pos (), Parsing.symbol_end_pos ())) )
# 334 "ParRwhile.ml"
               : AbsRwhile.valT))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_list) in
    Obj.repr(
# 46 "ParRwhile.mly"
                    ( Prog _1 )
# 341 "ParRwhile.ml"
               : 'program))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "ParRwhile.mly"
                        ( []  )
# 347 "ParRwhile.ml"
               : 'proc_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc) in
    Obj.repr(
# 50 "ParRwhile.mly"
         ( (fun x -> [x]) _1 )
# 354 "ParRwhile.ml"
               : 'proc_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'proc) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'proc_list) in
    Obj.repr(
# 51 "ParRwhile.mly"
                         ( (fun (x,xs) -> x::xs) (_1, _3) )
# 362 "ParRwhile.ml"
               : 'proc_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 6 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'pat) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'com_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'pat) in
    Obj.repr(
# 54 "ParRwhile.mly"
                                                               ( Proc (_2, _4, (List.rev _6), _8) )
# 372 "ParRwhile.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'pat) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'fexp) in
    Obj.repr(
# 55 "ParRwhile.mly"
                                         ( Func (_2, _4, _6) )
# 381 "ParRwhile.ml"
               : 'proc))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'rIdent) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 58 "ParRwhile.mly"
                       ( CAsn (_1, _3) )
# 389 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pat) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'pat) in
    Obj.repr(
# 59 "ParRwhile.mly"
                  ( CRep (_1, _3) )
# 397 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'thenBranch) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'elseBranch) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 60 "ParRwhile.mly"
                                                ( CCond (_2, _3, _4, _6) )
# 407 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'doBranch) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'loopBranch) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 61 "ParRwhile.mly"
                                                   ( CLoop (_2, _3, _4, _6) )
# 417 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 62 "ParRwhile.mly"
                 ( CShow _2 )
# 424 "ParRwhile.ml"
               : 'com))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "ParRwhile.mly"
                       ( []  )
# 430 "ParRwhile.ml"
               : 'com_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'com_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'com) in
    Obj.repr(
# 66 "ParRwhile.mly"
                       ( (fun (x,xs) -> x::xs) (_2, _1) )
# 438 "ParRwhile.ml"
               : 'com_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com_list) in
    Obj.repr(
# 69 "ParRwhile.mly"
                               ( BThen (List.rev _2) )
# 445 "ParRwhile.ml"
               : 'thenBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "ParRwhile.mly"
                ( BThenNone  )
# 451 "ParRwhile.ml"
               : 'thenBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com_list) in
    Obj.repr(
# 73 "ParRwhile.mly"
                               ( BElse (List.rev _2) )
# 458 "ParRwhile.ml"
               : 'elseBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "ParRwhile.mly"
                ( BElseNone  )
# 464 "ParRwhile.ml"
               : 'elseBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com_list) in
    Obj.repr(
# 77 "ParRwhile.mly"
                           ( BDo (List.rev _2) )
# 471 "ParRwhile.ml"
               : 'doBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 78 "ParRwhile.mly"
                ( BDoNone  )
# 477 "ParRwhile.ml"
               : 'doBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'com_list) in
    Obj.repr(
# 81 "ParRwhile.mly"
                               ( BLoop (List.rev _2) )
# 484 "ParRwhile.ml"
               : 'loopBranch))
; (fun __caml_parser_env ->
    Obj.repr(
# 82 "ParRwhile.mly"
                ( BLoopNone  )
# 490 "ParRwhile.ml"
               : 'loopBranch))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'fexp) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'fexp) in
    Obj.repr(
# 85 "ParRwhile.mly"
                                              ( FIf (_2, _4, _6) )
# 499 "ParRwhile.ml"
               : 'fexp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 86 "ParRwhile.mly"
                   ( Freturn _2 )
# 506 "ParRwhile.ml"
               : 'fexp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 89 "ParRwhile.mly"
                   ( ENot _2 )
# 513 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 90 "ParRwhile.mly"
                  ( EAtom _2 )
# 520 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 91 "ParRwhile.mly"
                       ( ECons (_2, _3) )
# 528 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 92 "ParRwhile.mly"
                ( EHd _2 )
# 535 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 93 "ParRwhile.mly"
                ( ETl _2 )
# 542 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 94 "ParRwhile.mly"
                                    ( Ecall (_2, _4) )
# 550 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 95 "ParRwhile.mly"
                    ( EEq (_2, _3) )
# 558 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 96 "ParRwhile.mly"
                    ( ELt (_2, _3) )
# 566 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 97 "ParRwhile.mly"
                    ( ELe (_2, _3) )
# 574 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 98 "ParRwhile.mly"
                    ( EGt (_2, _3) )
# 582 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 99 "ParRwhile.mly"
                    ( EGe (_2, _3) )
# 590 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 100 "ParRwhile.mly"
                     ( EAnd (_2, _3) )
# 598 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp1) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 101 "ParRwhile.mly"
                     ( EOr (_2, _3) )
# 606 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp1) in
    Obj.repr(
# 102 "ParRwhile.mly"
         (  _1 )
# 613 "ParRwhile.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 105 "ParRwhile.mly"
                ( EVar _1 )
# 620 "ParRwhile.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'valT) in
    Obj.repr(
# 106 "ParRwhile.mly"
         ( EVal _1 )
# 627 "ParRwhile.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 107 "ParRwhile.mly"
                    (  _2 )
# 634 "ParRwhile.ml"
               : 'exp1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'pat) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'pat) in
    Obj.repr(
# 110 "ParRwhile.mly"
                                 ( PCons (_2, _4) )
# 642 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 111 "ParRwhile.mly"
             ( PVar _1 )
# 649 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 112 "ParRwhile.mly"
         ( PAtom _1 )
# 656 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    Obj.repr(
# 113 "ParRwhile.mly"
            ( PNil  )
# 662 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'pat) in
    Obj.repr(
# 114 "ParRwhile.mly"
                                    ( PCall (_2, _4) )
# 670 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'rIdent) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'pat) in
    Obj.repr(
# 115 "ParRwhile.mly"
                                      ( PUncall (_2, _4) )
# 678 "ParRwhile.ml"
               : 'pat))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "ParRwhile.mly"
               ( VNil  )
# 684 "ParRwhile.ml"
               : 'valT))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 119 "ParRwhile.mly"
         ( VAtom _1 )
# 691 "ParRwhile.ml"
               : 'valT))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'valT) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'valT) in
    Obj.repr(
# 120 "ParRwhile.mly"
                                 ( VCons (_2, _4) )
# 699 "ParRwhile.ml"
               : 'valT))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'rIdent) in
    Obj.repr(
# 123 "ParRwhile.mly"
                  ( Var _1 )
# 706 "ParRwhile.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 127 "ParRwhile.mly"
                    ( RIdent (_1))
# 713 "ParRwhile.ml"
               : 'rIdent))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 128 "ParRwhile.mly"
                ( Atom (_1))
# 720 "ParRwhile.ml"
               : 'atom))
(* Entry pProgram *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry pValT *)
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
let pValT (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : AbsRwhile.valT)
