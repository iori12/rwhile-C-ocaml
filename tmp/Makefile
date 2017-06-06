all:
	ocamlyacc ParRwhile.mly
	ocamllex LexRwhile.mll
	ocamlc -o TestRwhile BNFC_Util.ml AbsRwhile.ml SkelRwhile.ml ShowRwhile.ml PrintRwhile.ml ParRwhile.mli ParRwhile.ml LexRwhile.ml TestRwhile.ml

clean:
	-rm -f *.cmi *.cmo *.o

distclean: clean
	-rm -f LexRwhile.* ParRwhile.* LayoutRwhile.* SkelRwhile.* PrintRwhile.* ShowRwhile.* TestRwhile.* AbsRwhile.* TestRwhile BNFC_Util.ml Makefile*

