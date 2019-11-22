(* OCaml module generated by the BNF converter *)


type rIdent = RIdent of string
and atom = Atom of string
and program =
   Prog of proc list

and proc =
   Proc of rIdent * pat * com list * pat
 | Func of rIdent * pat * fexp

and com =
   CAsn of rIdent * exp
 | CRep of pat * pat
 | CCond of exp * thenBranch * elseBranch * exp
 | CLoop of exp * doBranch * loopBranch * exp
 | CShow of exp

and thenBranch =
   BThen of com list
 | BThenNone

and elseBranch =
   BElse of com list
 | BElseNone

and doBranch =
   BDo of com list
 | BDoNone

and loopBranch =
   BLoop of com list
 | BLoopNone

and fexp =
   FIf of exp * fexp * fexp
 | Freturn of exp

and exp =
   ENot of exp
 | EAtom of exp
 | ECons of exp * exp
 | EHd of exp
 | ETl of exp
 | Ecall of rIdent * exp
 | EEq of exp * exp
 | ELt of exp * exp
 | ELe of exp * exp
 | EGt of exp * exp
 | EGe of exp * exp
 | EAnd of exp * exp
 | EOr of exp * exp
 | EVar of variable
 | EVal of valT

and pat =
   PCons of pat * pat
 | PVar of variable
 | PAtom of atom
 | PNil
 | PCall of rIdent * pat
 | PUncall of rIdent * pat

and valT =
   VNil
 | VAtom of atom
 | VCons of valT * valT

and variable =
   Var of rIdent
