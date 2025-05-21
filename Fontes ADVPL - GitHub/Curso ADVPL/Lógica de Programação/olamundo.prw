#INCLUDE 'protheus.ch'


 /*/{Protheus.doc} OlaMundo
    (long_description)
    @type  Function
    @author Wesley França
    @since 03/09/2023
    @version version_1
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/ 
    
User Function OlaMundo()

//Local aMenNota  := {}
Local nNum := 1
//Local Msg := ""

MSGINFO( "OLÁ MUNDO")
/*
AaDd(aMenNota,"DEU CERTO DE NOVO!")

            For nNum := 1 To Len(aMenNota)

			Msg += cValtoChar(aMenNota[nNum] + ", ")

		    Next

            Alert(Msg)

	 Help(NIL, NIL, 'Olá Mundo', NIL, 'Voê está Iniciando em Programção ADVPL', 1, 0, NIL, NIL, NIL, NIL, NIL,;
			;
			 {'Continue Estudando Para Garantir os Melhores Resultados'})*/ //Mensagem Help

             IIF(nNum == 1, MsgInfo("Passou",""), MsgAlert("Reprovado",""))

Return
