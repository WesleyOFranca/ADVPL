#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} Avetor
    @type  Function
    @author Wesley Fran�a
    @since 25/10/2023
    @version 1
    /*/
User Function AVETOR()
    
        // Array : COLE��ES DE VALORES, SEMELHANTE A UMA LISTA 
        // CADA ITEM EM UM ARRAY � REFERENCIADO PELA INDICA��O DE SUA POSI��O NUMERICA A PARTIR DO N�MERO 1

    Local dData := Date()
    Local aValores := {"Jo�o", dData, 100}

    Alert(aValores[2]) // EXIBE A POSI��O 2 DO ARRAY

    Alert(aValores[3]) 
Return 
