#include "protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

 /*/{Protheus.doc} nomeFunction
(long_description)
@type  Function
@author user
@since 02/03/2024
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
    /*/

User Function TRANSACAO()

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	//DbSelectArea("SZ0")

	Begin Transaction

		cCliente := GetSx8Num('SZ0','Z0_CLIENTE')

		Reclock("SZ0", .T.)
		SZ0-> Z0_FILIAL  := xFilial()
		SZ0-> Z0_CLIENTE := cCliente
		SZ0-> Z0_LOJA    := "01"
		SZ0-> Z0_PRODUT  := "000001"
		SZ0-> Z0_UM      := "PC"
		SZ0-> Z0_UMCLI   := "CX"
		SZ0-> Z0_TIPO    := "M"
		SZ0-> Z0_FATOR   := 1
		SZ0-> (MsUnLock())

		ConfirmSx8()

	End Transaction


	BeginTran()

	cCliente := GetSx8Num('SZ0','Z0_CLIENTE')

	Reclock("SZ0", .T.)
	SZ0-> Z0_FILIAL  := xFilial()
	SZ0-> Z0_CLIENTE := cCliente
	SZ0-> Z0_LOJA    := "01"
	SZ0-> Z0_PRODUT  := "000001"
	SZ0-> Z0_UM      := "PC"
	SZ0-> Z0_UMCLI   := "CX"
	SZ0-> Z0_TIPO    := "M"
	SZ0-> Z0_FATOR   := 1
	SZ0-> (MsUnLock())

	ConfirmSx8()

    DisarmTransaction()

	EndTran()
    MsUnLockAll()



	RESET ENVIRONMENT

Return
