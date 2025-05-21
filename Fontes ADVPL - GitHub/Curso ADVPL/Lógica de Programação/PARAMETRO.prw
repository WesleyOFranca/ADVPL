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

User Function PARAMETRO()

	Local dParam

	RpcSetType(3)
	PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"

	dParam := GetMV("MV_ULMES")

	dParam += 90

	PutMv("MV_ULMES", dParam)

	MsgInfo("Conteudo do Parametro " + Dtoc(GetMv("MV_ULMES")), "TESTE")

	RESET ENVIRONMENT

Return
