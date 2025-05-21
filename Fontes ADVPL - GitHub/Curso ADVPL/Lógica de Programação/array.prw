#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} Avetor
    @type  Function
    @author Wesley França
    @since 25/10/2023
    @version 1
    /*/
User Function AVETOR()
    
        // Array : COLEÇÕES DE VALORES, SEMELHANTE A UMA LISTA 
        // CADA ITEM EM UM ARRAY É REFERENCIADO PELA INDICAÇÃO DE SUA POSIÇÃO NUMERICA A PARTIR DO NÚMERO 1

    Local dData := Date()
    Local aValores := {"João", dData, 100}

    Alert(aValores[2]) // EXIBE A POSIÇÃO 2 DO ARRAY

    Alert(aValores[3]) 
Return 
