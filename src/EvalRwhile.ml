open AbsRwhile
open PrintRwhile
open List

let proc_list = ref []

type store = (rIdent * valT) list

let vtrue = VCons (VNil, VNil)
let vfalse = VNil
let vnot = function
    VNil -> vtrue
  | _    -> vfalse

let mkstore = List.map (fun x -> (x, VNil))

let prtStore (i : int) (e : (rIdent * valT) list) : doc = 
  let rec f = function
    | [] -> concatD []
    | [(x,v)] -> concatD [prtRIdent 0 x; render ":="; prtValT 0 v]
    | (x,v) :: ss -> concatD [prtRIdent 0 x; render ":="; prtValT 0 v; render "," ; f ss]
  in concatD [render "{"; f e; render "}"]

(* リストに要素を追加する。ただし、すでにその要素がリストにある場合は追加しない。 *)
let rec insert x : 'a list -> 'a list = function 
  | [] -> [x]
  | y :: ys -> y :: if x = y then ys else insert x ys

let merge xs ys = fold_right insert xs ys

let merge' xss = fold_right merge xss []

(* Reversible update *)
let rec rupdate (x, vx) = function
  | [] -> failwith ("Variable " ^ printTree prtRIdent x ^ " is not found (1)")
  | (y, vy) :: ys when x = y ->
     let oplus d e = if d = VNil then
		       e
		     else if d = e && d != VNil then
		       VNil
		     else 
                       failwith ("error in update: left operand = " ^ PrintRwhile.printTree PrintRwhile.prtValT d ^ ", right operand = " ^ PrintRwhile.printTree PrintRwhile.prtValT e)
     in (y, oplus vy vx) :: ys
  | (y, vy) :: ys -> (y, vy) :: rupdate (x, vx) ys

(* Irreversible update *)
let rec update (x, vx) = function
  | [] -> failwith ("Variable " ^ printTree prtRIdent x ^ " is not found (2)")
  | (y, vy) :: ys -> if x = y
		     then (y, vx) :: ys
		     else (y, vy) :: update (x, vx) ys

(* store の中がすべてゼロクリアされていることを確認する *)
let all_cleared (s : store) = for_all (fun (_, v) -> v = VNil) s

let rec varExp : exp -> rIdent list = function
  | ENot e | EAtom e -> varExp e
  | ECons (e1, e2) -> merge (varExp e1) (varExp e2)
  | EHd e | ETl e -> varExp e
  | Ecall (_, e) -> varExp e
  | EEq (e1, e2) | ELt (e1, e2) | ELe (e1, e2) | EGt (e1, e2) | EGe (e1, e2) | EAnd (e1, e2) | EOr (e1, e2) ->
     merge (varExp e1) (varExp e2)
  | EVar (Var x) -> [x]
  | EVal v -> []

(* プログラム中に使用されている変数名を列挙する。 *)
let rec varPat : pat -> rIdent list = function
   PCons (q,r) -> merge (varPat q) (varPat r)
 | PVar (Var x) -> [x]
 | PAtom _ | PNil  -> []
 | PCall (_,pat) | PUncall (_,pat) -> varPat pat

let rec varCom : com -> rIdent list = function
  | CAsn (x,e) -> insert x (varExp e)
  | CRep (q, r) -> merge (varPat q) (varPat r)
  | CCond (e, thenBranch, elseBranch, f) ->
     merge' [varExp e; varExp f; varThenBranch thenBranch; varElseBranch elseBranch]
  | CLoop (e, doBranch, loopBranch, f) ->
     merge' [varExp e; varExp f; varDoBranch doBranch; varLoopBranch loopBranch]
  | CShow _ -> []

and varThenBranch = function
  | BThen cs  -> merge' (List.map varCom cs)
  | BThenNone -> []

and varElseBranch = function
  | BElse cs  -> merge' (List.map varCom cs)
  | BElseNone -> []

and varDoBranch = function
  | BDo cs  -> merge' (List.map varCom cs)
  | BDoNone -> []

and varLoopBranch = function
  | BLoop cs  -> merge' (List.map varCom cs)
  | BLoopNone -> []

let varProc (Proc (name, x, c, y)) : rIdent list =
  merge' (varPat x :: varPat y :: List.map varCom c)

let varFunc (Func (name, pat, _)) : rIdent list = varPat pat

let varProgram (Prog ps) = merge' (List.map varProc ps)

(* Evaluation *)
let evalVariable s (Var x) =
  try
    assoc x s
  with Not_found ->
    print_endline ("evalVariable: " ^ printTree prtStore s ^ "\n" ^ printTree prtVariable (Var x));
    raise Not_found

(* procedure lookup *)
let lookup name =
  let f = function
       Proc (name',_,_,_) -> name = name'
     | Func _ -> false
  in
  try
    find f (!proc_list)
  with Not_found ->
    print_endline ("procedure " ^ printTree prtRIdent name ^ " not found");
    raise Not_found

(* funcion lookup *)
let flookup name =
  let f = function
       Proc _ -> false
     | (Func (name',_,_)) -> name = name'
  in
  try
    find f (!proc_list)
  with Not_found ->
    print_endline ("function " ^ printTree prtRIdent name ^ " not found");
    raise Not_found

let rec evalExp s = function
  | ENot e -> vnot (evalExp s e)
  | EAtom e -> (match evalExp s e with
                | VNil | VAtom _ -> vtrue
                | _ -> vfalse)
  | ECons (e1, e2) -> VCons (evalExp s e1, evalExp s e2)
  | EHd e -> (match evalExp s e with
	      | VNil | VAtom _ as v -> failwith ("No head. Expression " ^ printTree prtExp (EHd e) ^ " has value " ^ printTree prtValT v)
	      | VCons (v,_) -> v)
  | ETl e -> (match evalExp s e with
	      | VNil | VAtom _ as v -> failwith ("No tail. Expression " ^ printTree prtExp (ETl e) ^ " has value " ^ printTree prtValT v)
	      | VCons (_,v) -> v)
  | Ecall (name, arg) -> evalFunc s (flookup name) (evalExp s arg)
  | EEq (e1, e2) -> if evalExp s e1 = evalExp s e2 then vtrue else vfalse
  | ELt (e1, e2) -> if evalExp s e1 < evalExp s e2 then vtrue else vfalse
  | ELe (e1, e2) -> if evalExp s e1 <= evalExp s e2 then vtrue else vfalse
  | EGt (e1, e2) -> if evalExp s e1 > evalExp s e2 then vtrue else vfalse
  | ELe (e1, e2) -> if evalExp s e1 >= evalExp s e2 then vtrue else vfalse
  | EAnd (e1, e2) -> if evalExp s e1 = vtrue && evalExp s e2 = vtrue then vtrue else vfalse
  | EOr  (e1, e2) -> if evalExp s e1 = vfalse && evalExp s e2 = vfalse then vfalse else vtrue
  | EVar x -> evalVariable s x
  | EVal v -> v

and evalPat s = function
    PCons (q, r) -> let (s1, d1) = evalPat s q in
		    let (s2, d2) = evalPat s1 r in
		    (s2, VCons (d1, d2))
  | PVar (Var y) -> let v = evalVariable s (Var y) in
		    (update (y,VNil) s, v)
  | PNil -> (s, VNil)
  | PAtom x -> (s, VAtom x)
  | PCall (name,arg) ->
     let (s',v) = evalPat s arg in
     (s',evalProc (lookup name) v)
  | PUncall (name,arg) ->
     let (s',v) = evalPat s arg in
     let aproc = lookup name in
     let v' = evalProc (InvRwhile.invProc aproc) v
     in (s',v')

and inv_evalPat s (p,v) =
  let res =
    (match (p,v) with
       (PCons (p1, p2), VCons (v1, v2)) -> let s1 = inv_evalPat s (p1, v1) in
					   inv_evalPat s1 (p2, v2)
     | (PVar (Var y), v) -> if evalVariable s (Var y) = VNil
			    then update (y, v) s
			    else (print_string ("impossible happened in inv_evalPat.PVar\n" ^
					          "pattern: " ^ printTree prtPat p ^ "\n" ^
						    "term: " ^ printTree prtValT v ^ "\n" ^
						      "store: " ^ printTree prtStore s ^ "\n");
			          failwith "in inv_evalPat.PVar"
			         )
     | (PNil, VNil) -> s
     | (PAtom x, VAtom y) -> if x = y then s
		             else failwith ("Pattern matching failed.\n" ^
				              printTree prtPat (PAtom x) ^ " and " ^ printTree prtValT (VAtom y) ^ " are not equal (in inv_evalPat)\n" ^
				                printTree prtStore s ^ "\n")
     | (PCons _, v) -> failwith ("impossible happened in inv_evalPat.PCons\n" ^
				   "pattern: " ^ printTree prtPat p ^ "\n" ^
				     "term: " ^ printTree prtValT v ^ "\n" ^
				       "store: " ^ printTree prtStore s ^ "\n"
			        )
     | (PCall (name,arg), v') ->
        let aproc = 
          try
            find (fun (Proc (name',_,_,_)) -> name = name') (!proc_list)
          with Not_found ->
            print_endline ("procedure " ^ printTree prtRIdent name ^ " not found");
            raise Not_found
        in
        let v' = evalProc (InvRwhile.invProc aproc) v
        in
        inv_evalPat s (arg,v')
     | (PUncall (name,arg), v') ->
        let aproc = 
          try
            find (fun (Proc (name',_,_,_)) -> name = name') (!proc_list)
          with Not_found ->
            print_endline ("procedure " ^ printTree prtRIdent name ^ " not found");
            raise Not_found
        in
        let v' = evalProc aproc v
        in
        inv_evalPat s (arg,v')
     | _ -> failwith "not matched in inv_evalPat")
  in
  res

and evalComs (s : store) cs = match cs with
    []     -> s
  | c::cs' -> let s' = evalCom s c in evalComs s' cs'

and evalCom (s : store) : com -> store = function
  | CAsn (y, e) -> let v' = evalExp s e in
		   rupdate (y, v') s
  | CRep (q, r) -> let (s1, v1) = evalPat s r in
		   inv_evalPat s1 (q, v1)
  | CCond (e, thenbranch, elsebranch, f) ->
     (match evalExp s e with
     | VCons (VNil, VNil) ->
        let s1 = (match thenbranch with
		  | BThen cs  -> evalComs s cs
		  | BThenNone -> s)
        in
        if evalExp s1 f = vtrue then s1
        else failwith ("Assertion " ^ printTree prtExp f ^ " is not true.\n")
     | VNil ->
        let s1 = match elsebranch with
	  | BElse cs  -> evalComs s cs
	  | BElseNone -> s
        in
        if evalExp s1 f = vfalse then s1
        else failwith ("Assertion " ^ printTree prtExp f ^ " is not false.\n")
     | _ -> failwith ("Test " ^ printTree prtExp f ^ " is neither true nor false.\n"))
  | CLoop (e, dobranch, loopbranch, f) ->
     if evalExp s e = vtrue then
       let s1 = match dobranch with
	   BDo cs  -> evalComs s cs
	 | BDoNone -> s
       in
       evalLoop s1 (e, dobranch, loopbranch, f)
     else failwith ("Assertion " ^ printTree prtExp e ^ " is not true.\n")
  | CShow e -> (print_string (printTree prtExp e ^ " = " ^ printTree prtValT (evalExp s e) ^ "\n"); s)

and evalLoop (s : store) (e, dobranch, loopbranch, f) : store =
  match evalExp s f with
    VCons (VNil, VNil) -> s (* vtrue *)
  | VNil ->                (* vfalse *)
    let s1 = (match loopbranch with
	 	BLoop cs  -> evalComs s cs
	      | BLoopNone -> s)
    in
    assert (evalExp s1 e = vfalse);
    let s2 = (match dobranch with
		BDo cs  -> evalComs s1 cs
	      | BDoNone -> s1)
    in
    evalLoop s2 (e, dobranch, loopbranch, f)
  | _ -> failwith ("Test " ^ printTree prtExp f ^ " is neither true nor false.\n")

and evalFunc s (Func (name, pat, fexp) : proc) (v : valT) : valT =
  let s0 = mkstore (varPat pat) in
  let s' = inv_evalPat (merge s s0) (pat, v) in
  evalFexp s' fexp

and evalFexp s = function
    FIf (e, f1, f2) -> let f = if evalExp s e = vtrue then f1 else f2
                       in evalFexp s f
  | Freturn e -> evalExp s e

and evalProc (Proc (name, x, cs, y) as p : proc) (v : valT) : valT =
  let s = mkstore (varProc p) in
  let s1 = inv_evalPat s (x,v) in
  let s2 = evalComs s1 cs in
  let (s3,res) = evalPat s2 y in
  if all_cleared s3 then res
  else failwith ("Some variables are not nil.\n" ^ printTree prtStore s3)

let evalProgram (Prog prog : program) (v : valT) : valT =
  proc_list := prog;
  match prog with
    []     -> failwith "no procedure"
  | p :: _ -> evalProc p v
