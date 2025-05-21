#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*/{Protheus.doc} Docase()
    (long_description)
    @type  Function
    @author user
    @since 21/09/2023
    @version version
    @param param_name, param_type, param_descr
    @return, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
User Function DoCase() /// É a função utilizada para incluir caso a caso de opções desejadas

    Local cData:= "17/09/2023"

    Do Case /// Abre uma Função Case

   Case cData == "17/09/2023" ; Alert("Não é a Data do Seu Nascimento " + cData)

    Case cData == "17/09/1998"

    Alert("É a Sua Data de Nascimento!")

    OtherWise  /// É a função que retona quando nada for verdadeiro nos Cases (else)

    MsgAlert("Não Localizei o Dia do Seu Nascimento!")

    EndCase /// Fecha uma Função Case

Return
