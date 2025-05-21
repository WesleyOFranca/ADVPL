#INCLUDE "Protheus.CH"

 /*/{Protheus.doc} nomeFunction
(long_description)
@type  Function
@author user
@since 23/02/2024
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
    /*/

User Function DIRETIVAS()

	Local nValor1 := 10
	Local nValor2 := 20
    Local nResultado := 0

    nResultado := RECEBE(@nValor1,nValor2)

    Alert(nResultado)

Return


Static Function RECEBE(nValor1,nValor2)

    Local nRetorno := 0

    nValor1 := 20

    nRetorno := nValor1 * nValor2
    
Return(nRetorno)
