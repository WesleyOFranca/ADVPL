#INCLUDE "Protheus.CH"


User Function TESTARVAR()

Local nNumero := 10.5 
Local cNumero
Local dData := cTod("01/12/2021")
Local cData 
Local sData
Local cTexto := "AULA PRATICA"
Local cTexto2

cData := dToc(dData)

sData := dTos(dData)

cNumero := cValtoChar(nNumero)

cTexto2 := SubsTr(cTexto,1,5)
cTexto2 := Capital(cTexto2)

cTexto2 := Lower(cTexto2)

cTexto2 := Stuff(cTexto2,1,1,"O")

Return
