#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} usarfor
    (long_description)
    @type  Function
    @author user
    @since 18/10/2023
    @version 1
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
User Function usarfor()
    
    Local nCount
    Local nNum := 0

    For nCount := 0 To 10 //Step 2 //// "To" = Até (sem step o incremento é de 1 em 1 conforme anterior)
                                 //// Step 2 = incremento de 2 em 2 
    nNum += nCount

    Next  /// Fazer Após a repetição for verdadeira

    Alert("Valor: " + cValTochar(nNum))

Return 
