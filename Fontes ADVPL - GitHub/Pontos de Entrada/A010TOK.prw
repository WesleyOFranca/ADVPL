#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'
#INCLUDE 'topconn.ch'

 /*/
{Protheus.doc} A010TOK
@author Wesley França
@since 15/01/2024
@version 1.0
@Description: Ponto de Entrada - Validação de Tipo x Conta Contabil

/*/

User Function A010TOK()

    Local aArea := SB1->(GetArea())
	Local lExecuta := .T.
	Local cTipo := AllTrim(M->B1_TIPO)
	Local cConta := AllTrim(M->B1_CONTA)

	If (ctipo == "PA" .AND. cConta == "001")
		
        Alert("A Conta <b>" + cConta + "</b> não pode estar " + "assosiada a um produto do tipo <b>" + cTipo )
		
        lExecuta := .F. 

	EndIf

    RestArea(aArea)

Return (lExecuta)
