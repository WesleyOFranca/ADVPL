#INCLUDE 'protheus.ch'


 /*/{Protheus.doc} OlaMundo
    (long_description)
    @type  Function
    @author Wesley Fran�a
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

MSGINFO( "OL� MUNDO")
/*
AaDd(aMenNota,"DEU CERTO DE NOVO!")

            For nNum := 1 To Len(aMenNota)

			Msg += cValtoChar(aMenNota[nNum] + ", ")

		    Next

            Alert(Msg)

	 Help(NIL, NIL, 'Ol� Mundo', NIL, 'Vo� est� Iniciando em Program��o ADVPL', 1, 0, NIL, NIL, NIL, NIL, NIL,;
			;
			 {'Continue Estudando Para Garantir os Melhores Resultados'})*/ //Mensagem Help

             IIF(nNum == 1, MsgInfo("Passou",""), MsgAlert("Reprovado",""))

Return
