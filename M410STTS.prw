#INCLUDE 'protheus.ch'
#INCLUDE "TOTVS.CH"

 /*{Protheus.doc} M410STTS
    @type  Function
    @author wesley.franca
    @since 27/01/2024
    @version 1.0
    @param nOper, 
    @Description: PONTO DE ENTRADA PARA EXECU��O AP�S OPERA��O NO PEDIDO DE VENDA 
*/

User Function M410STTS()

	Local aArea := SC5->(GetArea())
	Local nOper := ParamIXB[1]
	Local cMsg  := ''

	If  (nOper == 5)
	
		cMsg := AllTrim(C5_ZZOBSE) + "Usu�rio da Exclus�o do Pedido.: " + cValToChar(UsrRetName(__cUserID)) + " " ;
									  + cValToChar(Date()) + " " + cValToChar(Time())

				dbSelectArea('SC5')
				Reclock('SC5', .F.)
				SC5-> C5_ZZOBSE := cMsg
				SC5-> (MsUnLock())
				DbCloseArea()

	EndIf

RestArea(aArea)

Return
