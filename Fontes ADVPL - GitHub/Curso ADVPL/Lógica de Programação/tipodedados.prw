#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/**

Tipos de Dados:

Numérico.: 3 / 21.000 / 0.4 / 200000
Lógico.: .T. / .F.
Caractere.: "Wesley" / 'C'
Data.: Date()
Array.: { "Valor1", "Valor2", "Valor3"}
Bloco de Código.: { ||Valor := 1, MsgAlert("Valor é igual a "cValToChar (Valor))} 

**/ 

/*/{Protheus.doc} Variavel
    (long_description)
    @type  Function
    @author Wesley França
    @since 03/09/2023
    @version version_1
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
User Function Variavel()

    Local nNum := 66
    Local lLogic := .T.
    Local cCarac := "String"
    Local dData := DATE()
    Local aArray := {"João","Maria","José"}
    Local bBloco := {|| nValor := 2, MsgAlert("O numero é: " + cValToChar(nValor),)}


    Alert (nNum)  // Alert é a função utilizada para retornar uma mensagem de alerta
    Alert (lLogic)
    Alert (CVALTOCHAR(cCarac)) // CValToChar é utilizado para imprimir caracteres de uma variavel 
    Alert (dData)
    Alert (aArray[1])
    Eval(bBloco) // Eval é a função utilizada para retornar um bloco de códigos

Return 
