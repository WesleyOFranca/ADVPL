#INCLUDE "Protheus.CH"

 /*/{Protheus.doc} nomeFunction
(long_description)
@type  Function
@author user
@since 22/02/2024
@version version
@param param_name, param_type, param_descr
@return return_var, return_type, return_description
@example
(examples)
@see (links_or_references)
    /*/

User Function DECISAO()

	Local nNumero := 0
	Local nCount := 0
	Local lContinua := .T.
	Local aArray1 := {0,0,0}
	Local aArray2 := {}


	While lContinua == .T.

		nCount++

		aArray1[1] := nCount
		aArray1[2] := nCount / 2
		aArray1[3] := nCount ^ 2
		

		If nCount == 10
			lContinua := .F.

		EndIf

	End

	For nNumero:= 1 To 10

		aAdd(aArray2,{nNumero})

		If nNumero == 7
			Exit
		EndIf

	Next

	nPos := Ascan(aArray2,{ | x | x[1] == 4}) //  x é um parametro do bloco

	Adel(aArray2, nPos)

	Asize(aArray2, Len(aArray2) - 1)

	




Return
