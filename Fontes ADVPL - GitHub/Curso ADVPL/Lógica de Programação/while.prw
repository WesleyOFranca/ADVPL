#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} useWhile
    @type  Function
    @author Wesley França
    @since 18/10/2023
    @version v_1
   
    /*/
User Function useWhile()

    Local nNum1 := 1
    //Local nNum2 := 10
    Local cNome := "Wesley"

/*While nNum1 < nNum2
        nNum1++ /// (++ é o incremento na variavel para +1)
    
EndDo // (É o retorno quando for falso a condição do While)
        Alert (nNum1 + nNum2)*/

//// While com Estrutura de Decisão

While nNum1 != 10 .AND. cNome != "Protheus"
    nNum1++

    If  nNum1 == 5
        cNome := "Protheus"
    EndIf

 EndDo

    Alert ("Número: " + CvaltoChar(nNum1))
    Alert ("Nome: "+ CvaltoChar(cNome))

Return 
