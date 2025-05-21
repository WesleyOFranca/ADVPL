#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


 /*/{Protheus.doc} BANCO002
@author Wesley França
@since 09/01/2024
@version 1.0
@Description: Função de Retorno de Descrição de Produto

    /*/
User Function BANCO002() // U_BANCO002()

	Local aArea := SB1->(GetArea()) // GetArea() serve para posicionar na tabela referenciada (->)
	Local cMsg := ""
	
		DbSelectArea("SB1")
		SB1->(DbSetOrder(1)) // DbSetOrder serve para posicionar o índice da tabela sempre necessário usa-lo
		SB1->(DbGoTop()) // DbGoTop Serve para iniciar as consultas na tabela
	
			cMsg := Posicione('SB1', 1, FwxFilial("SB1"), '0000001', 'B1_DESC')
				 // Posicione Serve para posicionar na tebela de acordo com os parametros na variavel

			Alert("Descrição do Produto: " + cMsg)
        
		RestArea(aArea) // RestArea deve ser sempre usado ao final de consultas de tabelas no código

Return
