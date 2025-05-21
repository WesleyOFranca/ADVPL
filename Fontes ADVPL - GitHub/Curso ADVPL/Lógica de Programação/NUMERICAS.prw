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

User Function NUMERICAS()

Local nNumero := 13
Local nResultado := 0
Local cTexto := ""
Local aArray := {}
Local nNum := 1

nResultado := NoRound(nNumero / 2,2)


    Aadd(aArray,ValType(nNumero))
    Aadd(aArray,ValType(nResultado))
    Aadd(aArray,ValType(cTexto))
    Aadd(aArray,ValType(aArray))


		For nNum := 1 To Len(aArray)

			cTexto += cValtoChar(aArray[NNum] + ", ")

		Next

        Alert(cTexto)


Return


