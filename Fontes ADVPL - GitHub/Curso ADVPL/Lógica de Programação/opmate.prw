#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*/{Protheus.doc} nomeFunction
    (long_description)
    @type  Function
    @author user
    @since 08/09/2023
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
    
user Function operador()

    local nNum := 10
    Local nNum2 := 20

    Alert (nNum + nNum2)
    Alert (nNum - nNum2)
    Alert (nNum * nNum2)
    Alert (nNum / nNum2)
    Alert (nNum2 % nNum) // Resto da divisão (módulo)

Return
