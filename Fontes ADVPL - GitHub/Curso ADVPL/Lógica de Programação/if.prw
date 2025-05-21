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
User Function usarif()

    Local nNum := 22
    Local nNum2 := 100


    If (nNum = nNum2)

    MsgInfo("A variável nNum é igual a nNum2")

    Elseif (nNum > nNum2)

    MsgAlert("A variavel é menor")

    Elseif (nNum != nNum2)

    Alert("A variavel nNum é diferente de nNum2")
        
    Endif
    
Return
