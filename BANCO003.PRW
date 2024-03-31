#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'
#INCLUDE 'topConn.ch'

 /*/{Protheus.doc} BANCO003
@author Wesley França
@since 09/01/2024
@version 1.0
@Description: Função de Consulta SQL em ADVPL

    /*/

User Function BANCO003()

    Local aArea := SB1-> (GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local nCount := 0


    cQuery := " SELECT "
    cQuery += " B1_COD AS CODIGO,"
    cQuery += " B1_DESC AS DESCRICAO "
    cQuery += " FROM "
    cQuery += " "+ RetSQLName("SB1")+ " SB1 "
    cQuery += " WHERE "
    cQuery += " B1_MSBLQL != '1' "

    // Incia a consulta SQL

    TcQuery cQuery New Alias "TEMP" 
        
        While !TEMP->(Eof()) 

            AaDd(aDados, TEMP-> CODIGO)
            AaDd(aDados, TEMP-> DESCRICAO)

            TEMP-> (DbSkip())

        Enddo

            Alert(Len(ADados)) 

        For nCount := 1 To Len(aDados)

        MsgInfo(aDados)

        Next nCount

            TEMP-> (DbCloseAre())
            
            RestArea(Aarea)
Return
