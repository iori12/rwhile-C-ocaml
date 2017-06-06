open AbsRwhile
open String

(* 「INV-マクロ名」と「マクロ名」は逆命令になる。
 * invMacroName は、「マクロ名」を「INV-マクロ名」に、「INV-マクロ名」を「マクロ名」に書き換える。 *)
let invMacroName (RIdent str) : rIdent = 
  RIdent (if length str >= 5 && sub str 0 4 = "INV-"
	  then sub str 4 (length str - 4)
	  else "INV-" ^ str)

let rec invCom = function
  | CAsn (x, e) -> CAsn (x, e)
  | CRep (p1, p2) -> CRep (p2, p1)
  | CCond (e, thenbranch, elsebranch, f) -> 
     CCond (f, invThenBranch thenbranch, invElseBranch elsebranch, e)
  | CLoop (e, dobranch, loopbranch, f) ->
     CLoop (f, invDoBranch dobranch, invLoopBranch loopbranch, e)
  | CShow e -> CShow e

and invThenBranch = function
    BThen cs   -> BThen (List.rev (List.map invCom cs))
  | BThenNone -> BThenNone

and invElseBranch = function
    BElse cs  -> BElse (List.rev (List.map invCom cs))
  | BElseNone -> BElseNone

and invDoBranch = function
    BDo cs  -> BDo (List.rev (List.map invCom cs))
  | BDoNone -> BDoNone

and invLoopBranch = function
    BLoop cs  -> BLoop (List.rev (List.map invCom cs))
  | BLoopNone -> BLoopNone

let invProc (Proc (name, x, c, y)) : AbsRwhile.proc = Proc (name, y, List.rev (List.map invCom c), x)

let invProgram (Prog ps) = Prog (List.map invProc ps)
