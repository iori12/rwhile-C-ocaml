open AbsRwhile
open List

let atom str = VAtom (Atom str)

let rec conss = function	(* 演算子 cons* *)
  | [] -> failwith "error in conss"
  | [v] -> v
  | v :: vs -> VCons (v, conss vs)

let rec repeat s n = if n = 0 then [] else s :: repeat s (n-1)

let doNothing = conss [atom "'ass"; conss [atom "'var"; VNil]; conss [atom "'val"; VNil]]

let rec transRIdent (RIdent str) : valT =
  try conss (repeat VNil (int_of_string str))
  with Failure("int_of_string") -> failwith "Impossible happened."

and transVariable (Var rident) : valT = conss [atom "'var"; transRIdent rident]

and transExp (x : exp) : valT = 
  conss (match x with
	 | EVar var -> [transVariable var]
	 | EVal val' -> [atom "'val"; val']
	 | ECons (e1, e2) -> [atom "'cons"; transExp e1; transExp e2]
	 | EHd e -> [atom "'hd"; transExp e]
	 | ETl e -> [atom "'tl"; transExp e]
	 | EEq (e1, e2) -> [atom "'eq"; transExp e1; transExp e2]
         | EAnd (e1, e2) -> [atom "'and"; transExp e1; transExp e2])

and transPat (x : pat) : valT = 
  conss (match x with
	 | PCons (p1, p2) -> [atom "'cons"; transPat p1; transPat p2]
	 | PVar var -> [transVariable var]
	 | PNil -> [VNil]
	 | PAtom x -> [atom "'val"; VAtom x]
         | PCall (x,p) -> [atom "'call"; transPat p])

and transComs (cs : com list) : valT = 
  conss (List.map transCom cs)

and transCom (c : com) : valT = 
  conss (match c with
	 | CAsn (x, e) -> [atom "'ass"; conss [atom "'var"; transRIdent x]; transExp e]
	 | CRep (p1, p2) -> [atom "'rep"; transPat p1; transPat p2]
	 | CCond (e, thenbranch, elsebranch, f) -> 
	    [atom "'cond"; conss [transExp e; transThenBranch thenbranch; transElseBranch elsebranch; transExp f; VNil]]
	 | CLoop (e, dobranch, loopbranch, f) -> 
	    [atom "'loop"; conss [transExp e; transDoBranch dobranch; transLoopBranch loopbranch; transExp f; VNil]]
	 | CShow e -> [])

and transThenBranch = function
    BThen com -> transComs com
  | BThenNone -> doNothing

and transElseBranch = function
    BElse com -> transComs com
  | BElseNone -> doNothing

and transDoBranch = function
    BDo com -> transComs com
  | BDoNone -> doNothing

and transLoopBranch = function
    BLoop com -> transComs com
  | BLoopNone -> doNothing

and transProc = function
    Proc (name, x, c, y) -> conss [conss [transRIdent name];
                                   conss [atom "'var"; transPat x];
				   transComs c;
				   conss [atom "'var"; transPat y]]

let transProgram (Prog ps) = conss (List.map transProc ps)

(* substitution *)
type subst = (rIdent * rIdent) list

let rec substRIdent (s : subst) (x : rIdent) : rIdent = 
  try assoc x s with
    Not_found -> (print_endline "in Program2DataRwhile"; x)

and substVariable s (Var x) : variable = Var (substRIdent s x)

and substExp s = function
    ECons (e, f) -> ECons (substExp s e, substExp s f)
  | EHd e -> EHd (substExp s e)
  | ETl e -> ETl (substExp s e)
  | EEq (e, f) -> EEq (substExp s e, substExp s f)
  | EAnd (e, f) -> EAnd (substExp s e, substExp s f)
  | EVar x -> EVar (substVariable s x)
  | EVal v -> EVal v

and substPat s = function
    PCons (p1, p2) -> PCons (substPat s p1, substPat s p2)
  | PVar x -> PVar (substVariable s x)
  | PNil -> PNil
  | PAtom x -> PAtom x
  | PCall (x,p) -> PCall (x, substPat s p)

and substComs s cs = List.map (substCom s) cs

and substCom s = function
  | CAsn (x, e) -> CAsn (substRIdent s x, substExp s e)
  | CRep (p1, p2) -> CRep (substPat s p1, substPat s p2)
  | CCond (e, thenbranch, elsebranch, f) ->
     CCond (substExp s e, substThenBranch s thenbranch, substElseBranch s elsebranch, substExp s f)
  | CLoop (e, dobranch, loopbranch, f) ->
     CLoop (substExp s e, substDoBranch s dobranch, substLoopBranch s loopbranch, substExp s f)
  | CShow e -> CShow (substExp s e)

and substThenBranch s = function
    BThen cs  -> BThen (substComs s cs)
  | BThenNone -> BThenNone

and substElseBranch s = function
    BElse c   -> BElse (substComs s c)
  | BElseNone -> BElseNone

and substDoBranch s = function
    BDo c   -> BDo (substComs s c)
  | BDoNone -> BDoNone

and substLoopBranch s = function
    BLoop com -> BLoop (substComs s com)
  | BLoopNone -> BLoopNone

and substProc s (Proc (name, x, cs, y)) =
  Proc (name, substPat s x, substComs s cs, substPat s y)

and substProgram s (Prog ps) =
  Prog (List.map (substProc s) ps)

let program2data (p : program) : valT =
  let vs = EvalRwhile.varProgram p in
  let rec incseq m n = if m = n then [m] else m :: incseq (m+1) n in
  let ws = map (fun n -> RIdent (string_of_int n)) (incseq 1 (length vs)) in
  let p3 = substProgram (combine vs ws) p in
  (* print_string (PrintRwhile.printTree PrintRwhile.prtProgram p3 ^ "\n"); *)
  transProgram p3
