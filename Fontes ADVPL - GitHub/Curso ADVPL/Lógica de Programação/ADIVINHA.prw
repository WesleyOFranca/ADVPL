#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*
{Protheus.doc} ADIVINHA
@author Wesley Fran�a
@since 02/01/2024
@version 1.0
@Description: Jogo de adivinha��o num�rica em ADVPL por n�vel
*/
User Function ADIVINHA()

	Local nNum1 := Randomize(1,100)
	Local nNum2 := Randomize(1,1000)
	Local nNum3 := Randomize(1,10000)
	Local nChute := 0
	Local nTent := 0
	Local nEscol := 0 // o usu�rio deve usar 1 pra "sim" e 2 para "n�o"
	Local nNivel := 0 // o usu�rio pode escolher entre 1, 2 e 3

	While nEscol == 0 .AND. nEscol != 2
		nEscol := Val(FwInputBox("Deseja Iniciar o Jogo de Adivinha��o? [1] Sim / [2] N�o", ""))

		If nEscol != 1 .AND. nEscol != 2
			Alert("Op��o N�o Permitida")
			nEscol := 0

		ElseIf nEscol == 2
			MsgInfo("Obrigado Por Participar!", "Volte Sempre!")

		EndIf

	End

	While nNivel == 0 .AND. nEscol != 2
		nNivel := Val(FwInputBox("Escolha o N�vel [1] F�cil / [2] Normal / [3] Dif�cil", ""))

		If nNivel != 1 .AND. nNivel != 2 .AND. nNivel != 3
			Alert("Op��o N�o Permitida")
			nNivel := 0
		EndIf
	End

	If nEscol == 1 .AND. nNivel == 1

		While nChute != nNum1 .AND. nEscol != 0
			nChute := Val(FwInputBox("Escolha um N�mero de [1 - 100]",""))

			If nChute == nNum1
				MsgInfo("Voc� Acertou! - <b>" + "O N�mero � " + Cvaltochar(nNum1) + "</b><br>Qtde. Erros: " + cValtochar(nTent), " Fim de Jogo")
			ElseIf nChute > nNum1
				MsgAlert("O n�mero informado � maior", "Tente Novamete")
				nTent += 1
				nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
				While nEscol != 1
					If  nEscol == 2
						MsgInfo("Obrigado Por Participar!","Volte Sempre!")
						nEscol := 0
						Exit
					Elseif nEscol != 1 .AND. nEscol != 2
						Alert("Op��o N�o Permitida")
						nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
					EndIf
				End
			Else
				MsgAlert("O n�mero informado � menor", "Tente Novamente")
				nTent += 1
				nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
				While nEscol != 1
					If  nEscol == 2
						MsgInfo("Obrigado Por Participar!","Volte Sempre!")
						nEscol := 0
						Exit
					Elseif nEscol != 1 .AND. nEscol != 2
						Alert("Op��o N�o Permitida")
						nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
					EndIf
				End
			EndIf
		End

	ElseIf nEscol == 1 .AND. nNivel == 2

		While nChute != nNum2 .AND. nEscol != 0
			nChute := Val(FwInputBox("Escolha um N�mero de [1 - 1000]",""))

			If nChute == nNum2
				MsgInfo("Voc� Acertou! - <b>" + "O N�mero � " + Cvaltochar(nNum2) + "</b><br>Qtde. Erros: " + cValtochar(nTent), " Fim de Jogo")
			ElseIf nChute > nNum2
				MsgAlert("O n�mero informado � maior", "Tente Novamete")
				nTent += 1
				nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
				While nEscol != 1
					If  nEscol == 2
						MsgInfo("Obrigado Por Participar!","Volte Sempre!")
						nEscol := 0
						Exit
					Elseif nEscol != 1 .AND. nEscol != 2
						Alert("Op��o N�o Permitida")
						nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
					EndIf
				End
			Else
				MsgAlert("O n�mero informado � menor", "Tente Novamente")
				nTent += 1
				nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
				While nEscol != 1
					If  nEscol == 2
						MsgInfo("Obrigado Por Participar!","Volte Sempre!")
						nEscol := 0
						Exit
					Elseif nEscol != 1 .AND. nEscol != 2
						Alert("Op��o N�o Permitida")
						nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
					EndIf
				End
			EndIf
		End

	ElseIf nEscol == 1 .AND. nNivel == 3

		While nChute != nNum3 .AND. nEscol != 0
			nChute := Val(FwInputBox("Escolha um N�mero de [1 - 10000]",""))

			If nChute == nNum3
				MsgInfo("Voc� Acertou! - <b>" + "O N�mero � " + Cvaltochar(nNum3) + "</b><br>Qtde. Erros: " + cValtochar(nTent), " Fim de Jogo")
			ElseIf nChute > nNum3
				MsgAlert("O n�mero informado � maior", "Tente Novamete")
				nTent += 1
				nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
				While nEscol != 1
					If  nEscol == 2
						MsgInfo("Obrigado Por Participar!","Volte Sempre!")
						nEscol := 0
						Exit
					Elseif nEscol != 1 .AND. nEscol != 2
						Alert("Op��o N�o Permitida")
						nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
					EndIf
				End
			Else
				MsgAlert("O n�mero informado � menor", "Tente Novamente")
				nTent += 1
				nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
				While nEscol != 1
					If  nEscol == 2
						MsgInfo("Obrigado Por Participar!","Volte Sempre!")
						nEscol := 0
						Exit
					Elseif nEscol != 1 .AND. nEscol != 2
						Alert("Op��o N�o Permitida")
						nEscol := Val(FwInputBox("Deseja Continuar ? [1] Sim / [2] N�o", ""))
					EndIf
				End
			EndIf
		End
	EndIf
Return
