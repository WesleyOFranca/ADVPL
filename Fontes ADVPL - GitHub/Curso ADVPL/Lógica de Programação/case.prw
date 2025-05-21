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
User Function DoCase() /// � a fun��o utilizada para incluir caso a caso de op��es desejadas

    Local cData:= "17/09/2023"

    Do Case /// Abre uma Fun��o Case

   Case cData == "17/09/2023" ; Alert("N�o � a Data do Seu Nascimento " + cData)

    Case cData == "17/09/1998"

    Alert("� a Sua Data de Nascimento!")

    OtherWise  /// � a fun��o que retona quando nada for verdadeiro nos Cases (else)

    MsgAlert("N�o Localizei o Dia do Seu Nascimento!")

    EndCase /// Fecha uma Fun��o Case

Return
