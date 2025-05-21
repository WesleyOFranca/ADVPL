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

User Function BLOCOS()

	Local nItem := 350
	Local nResultado := 0
	Local bBloco1 := {|H| E:= 15, Z := 30, R:= (E * Z) - H}

	nResultado := Eval(bBloco1, nItem)

Return
