#INCLUDE 'protheus.ch'
#INCLUDE "TOTVS.CH"

User  Function A410EXC()

	Local aAreaC5  := SC5->(GetArea())
	Local aAreaC6  := SC6->(GetArea())
	Public Uret     := .T.


	dbSelectArea('SX6')
	SX6->(DbSeek(xFilial('SX6') + 'ZZ_USREXPD '))

	If (DateDiffDay(C5_EMISSAO, Date()) > 1)

		If (__cUserID $ X6Conteud())
			Uret := .T.

		else
			MsgInfo("Usuário Não Autorizado a Excluir Pedidos Com Data Retroativa", "ATENÇÃO")
			Uret := .F.

		Endif
	Endif
	
	RestArea(aAreaC5)
	RestArea(aAreaC6)
	DbCloseArea()

Return (Uret)
