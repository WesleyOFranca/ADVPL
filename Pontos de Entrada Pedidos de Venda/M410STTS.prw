#INCLUDE 'protheus.ch'
#INCLUDE "TOTVS.CH"

 /*{Protheus.doc} M410STTS
    @type  Function
    @author wesley.franca
    @since 27/01/2024
    @version 1.0
    @param nOper, 
    @Description: PONTO DE ENTRADA PARA EXECU��O AP�S OPERA��O NO PEDIDO DE VENDA 

Par�metros:
nOper --> Tipo: Num�rico - Descri��o: Opera��o que est� sendo executada, sendo:

3 - Inclus�o
4 - Altera��o
5 - Exclus�o
6 - C�pia
7 - Devolu��o de Compras

*/

User Function M410STTS()

	Local aArea := SC5->(GetArea())
	Local nOper := ParamIXB[1]

	If  (nOper == 5)
	
		CMsg := AllTrim(C5_ZZOBSE) + "Usu�rio da Exclus�o do Pedido.: " + cValToChar(UsrRetName(__cUserID)) + " " ;
									  + cValToChar(Date()) + " " + cValToChar(Time() + Chr(13) + Chr(10))

				dbSelectArea('SC5')
				Reclock('SC5', .F.)
				Replace C5_ZZOBSE With cMsg
				SC5->(MsUnLock())
				DbCloseArea()

	EndIf

RestArea(aArea)

Return
