#INCLUDE 'PROTHEUS.CH'

 /*{Protheus.doc} M410TIP9
    @type  Function
    @author wesley.franca
    @since 30/03/2024
    @version 1.0
    @param nOper, 
    @Description: PONTO DE ENTRADA VALIDACAO CONDICAO DE PAGAMENTO TIPO 9 
*/


User Function M410TIP9(uPar)

	Local aAreaC5  := SC5->(GetArea())
	Local aAreaC6  := SC6->(GetArea())
	Local lRet     := .T.
	Local aVence   := {}
	Local nNum     := 0
	Local cMsg     := ""
	Local nItem    := 1
	Local nTotal   := 0


	Begin Sequence

		If !SE4->(MsSeek(xFilial("SE4") + M->C5_CONDPAG))

			Break

		Endif

		If SE4->E4_TIPO <> "9"

			Break

		Endif

		If (M->C5_PARC1 == 0.00 .AND. M->C5_PARC2 != 0.00)

			Alert("Não é Permitido Pular Parcelas <br><br>" + ;
				"Preencha a Parcela 1!")
			lRet := .F.
			Break

		ElseIf (M->C5_PARC2 == 0.00 .AND. M->C5_PARC3 != 0.00)

			Alert("Não é Permitido Pular Parcelas <br><br>" + ;
				"Preencha a Parcela 2")
			lRet := .F.
			Break

		ElseIf (M->C5_PARC3 == 0.00 .AND. M->C5_PARC4 != 0.00)

			Alert("Não é Permitido Pular Parcelas <br><br>" + ;
				"Preencha a Parcela 3")
			lRet := .F.
			Break

		ElseIf (M->C5_PARC1 == 0.00 .AND. M->C5_PARC2 == 0.00 .AND. M->C5_PARC3 == 0.00 .AND. M->C5_PARC4 == 0.00)

			Alert("Não é Permitido Utilizar a Condição de Pagamento Especifico " + ;
				"Sem Preencher as Parcelas")
			lRet := .F.
			Break

		EndIf

		Do Case

		Case (M->C5_PARC1 != 0.00 .AND. AllToChar(M->C5_DATA1) == "  /  /    ") ; AADD(aVence,"Parcela 1")

		Case (M->C5_PARC2 != 0.00 .AND. AllToChar(M->C5_DATA2) == "  /  /    ") ; AADD(aVence,"Parcela 2")

		Case (M->C5_PARC3 != 0.00 .AND. AllToChar(M->C5_DATA3) == "  /  /    ") ; AADD(aVence,"Parcela 3")

		Case (M->C5_PARC4 != 0.00 .AND. AllToChar(M->C5_DATA4) == "  /  /    ") ; AADD(aVence,"Parcela 4")

		EndCase

		For nNum := 1 To Len(aVence)

			cMsg += cValtoChar(aVence[NNum] + ", ")

		Next


		If (cMsg != "" .AND. M->C5_PARC1 != 0.00)

			MsgAlert("Falta o Preenchimento dos Vencimentos das Parcelas.: <br><br>" + cvaltochar(cMsg), + ;
				"Preencher Parcelas!")
			lRet := .F.
			Break
		EndIf


// Inicia a varredurada do valor total dos itens do pedido de venda	

		For nItem := 1 to Len(aCols)

			If aCols[nItem][Len(aCols[nItem])] 

				Loop
				
			EndIf

			nTotal += aCols[nItem][GdFieldPos('C6_VALOR')] 

		Next 

		// Atribuição de valores adicionais do pedido caso tenha

		nTotal := nTotal + M->C5_FRETE + M->C5_DESPESA + M->C5_SEGURO + M->C5_FRETAUT

		// Mensagem de retorno caso a soma das parcelas esteja diferente do valor total do pedido

		If (M->C5_PARC1 +  M->C5_PARC2 + M->C5_PARC3 + M->C5_PARC4 != nTotal)

			Alert("Valor Total das Parcelas está Diferente do Valor Total do Pedido <br><br>" + ;
				"Valor Total do Pedido.: " + "R$ " + ;
				cValToChar(Transform(ntotal,"@E 999,999.9999"))+"<br><br>" + ; 
			"Valor Total Parcelas.: " + "R$ " + ;
				cValToChar(Transform(M->C5_PARC1 +  M->C5_PARC2 + M->C5_PARC3 + M->C5_PARC4,"@E 999,999.9999")))

			lRet := .F.

			nTotal := 0

		Else

			lRet := .T.

		EndIf

	End Sequence

	RestArea(aAreaC5)
	RestArea(aAreaC6)

Return (lRet)
