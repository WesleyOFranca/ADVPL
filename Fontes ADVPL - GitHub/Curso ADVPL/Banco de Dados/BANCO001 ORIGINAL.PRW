#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


 /*/{Protheus.doc} BANCO001
@author Wesley França
@since 09/01/2024
@version 1.0
@Description: Função de Retorno de Descrição de Produto

    /*/
User Function BANCO001()

	Local aArea := GetArea() // GetArea() serve para posicionar na tabela referenciada (->)
	Local cCodi := ""

While cCodi == ""

		cCodi := FwInputBox("Informe o Código que Deseja a Descrição", "")	
	
		DbSelectArea("SB1")
		SB1->(DbSetOrder(1)) // DbSetOrder serve para posicionar o índice da tabela sempre necessário usa-lo
		SB1->(DbGoTop()) // DbGoTop Serve para iniciar as consultas na tabela

	If Len(cCodi) != 7

		Alert("Código Não Localizado")
			cCodi := ""

	Elseif SB1->(DbSeek(FWXFilial("SB1")+ cCodi))
        // DbSeek serve para fazer a varredura da tabela
		// FwXFilial serve para posicionar na Filial logada ou passada via parametro
		Alert(SB1->B1_DESC)

	EndIf

Enddo
        
		RestArea(aArea) // RestArea deve ser sempre usado ao final de consultas de tabelas no código

Return
