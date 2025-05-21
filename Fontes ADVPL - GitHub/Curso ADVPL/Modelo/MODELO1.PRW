#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} MODELO1
@author Wesley França
@since 11/01/2024
@version 1.0
@Description: Criação de Tela AxCadastros

/*/

User Function MODELO1()

    Local cTitulo := "Cadastros - AxCadastro"
    Local cAlias := "SZ1"
    Local aArea := SZ1->(GetArea())

    dbSelectArea(cAlias)
    dbSetOrder(1)

    AxCadastros(cAlias, cTitulo)

    RestArea(aArea)

Return
