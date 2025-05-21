#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} MBRSA2
@author Wesley França
@since 12/01/2024
@version 1.0
@Description: Tela Mbrowse Com Legenda e Mensagens nas Rotinas de Interação Padrão

/*/

User Function BANCO001()

	Local cAlias := "SA2"
	Local aCores := {}  // Array que irá receber as cores da legenda
	Local cFiltra := "A2_FILIAL == '"+xFilial('SA2')+"' .AND. A2_EST == 'SP'" // Variavel do Filtro de Entrada de Tela
	Private cCadastro := "Cadastro MBrowse" // Recebe o nome da tela
	Private aRotina := {} // Irá Receber as Funções da tela
	Private aIndexSA2 := {}
	Private bFiltraBrw := { || FilBrowse(cAlias, @aIndexSA2, @cFiltra)} // Rotina com chamada via bloco com Filtro de Browse

	AADD(aRotina, {"Pesquisar",  "AxPesqui",     0,   1}) // Adicionar ao array as opções informando o nome o botão, rotina, numero reservado sempre 0 e o tipo de operação (1,2,3...)
	AADD(aRotina, {"Visualizar", "AxVisual",     0,   2})
	AADD(aRotina, {"Incluir",    "U_BInclui",    0,   3})
	AADD(aRotina, {"Alterar",    "U_BAltera",    0,   4})
	AADD(aRotina, {"Excluir",    "U_BDeleta",    0,   5})
	AADD(aRotina, {"Legenda",    "U_BLegenda",   0,   6}) // Operação 6 é outras ações

    // aCores - Legenda

    AADD(aCores,{"A2_TIPO == 'F'", "BR_VERDE"  })
    AADD(aCores,{"A2_TIPO == 'J'", "BR_AMARELO"})
    AADD(aCores,{"A2_TIPO == 'X'", "BR_LARANJA"})
    AADD(aCores,{"A2_TIPO == 'R'", "BR_MARROM" })
    AADD(aCores,{"Empty(A2_TIPO)", "BR_PRET0"  }) // EMPTY É NÃO CLASIFICADO OU "VAZIO"

	DbSelectArea(cAlias)
	DbSetOrder(1)

	Eval(bFiltraBrw)

	DbGoTop()

	MBrowse(6, 1, 22, 75, cAlias,,,,,,aCores) // No MBrowser deve-se passar os parametros para montagem da tela

	EndFilBrw(cAlias, aIndexSA2) // Serve para fechar o filtro chamado na rotina filbrowse passando os parametros de alias e  index

Return

/*-------------------------------------------
    Função BInclui - Inclusão
-------------------------------------------*/

User Function BInclui(cAlias, nReg, nOpc)

    Local nOpcao := 0

          nOpcao := AxInclui(cAlias, nReg, nOpc)

        If nOpcao == 1 

            MsgInfo("Inclusão Efetuada Com Sucesso!")
        
        Else
            MsgAlert("Inclusão Cancelada!")
        
        EndIf

Return

/*-------------------------------------------
    Função BAltera - Alteração
-------------------------------------------*/

User Function BAltera(cAlias, nReg, nOpc)

    Local nOpcao := 0

          nOpcao := AxAltera(cAlias, nReg, nOpc)

        If nOpcao == 1 
            MsgInfo("Alteração Efetuada Com Sucesso!")
        
        Else
            MsgAlert("Alteração Cancelada!")
        
        EndIf

Return

/*-------------------------------------------
    Função BDeleta - Exclusão
-------------------------------------------*/

User Function BDeleta(cAlias, nReg, nOpc)

    Local nOpcao := 0
          nOpcao := AxDeleta(cAlias, nReg, nOpc)

        If nOpcao == 2

        
        		CMsg := AllTrim(A2_CONTATO) + "Usuário da Exclusão do Pedido.: " + cValToChar(UsrRetName(__cUserID)) + " " ;
									  + cValToChar(Date()) + " " + cValToChar(Time() + Chr(13) + Chr(10))

				dbSelectArea('SA2')
				Reclock('SA2', .F.)
				Replace A2_CONTATO With cMsg
				SA2->(MsUnLock())
				DbCloseArea()

            MsgInfo("Exclusão Efetuada Com Sucesso!")
        
        Else
            MsgAlert("Exclusão Cancelada!")
        
        EndIf

   Return

/*-------------------------------------------
    Função BLegenda - Legendas
-------------------------------------------*/

User Function BLegenda()

Local aLegenda := {}

    AADD(aLegenda, {"BR_VERDE", "Pessoal Física"    })
    AADD(aLegenda, {"BR_AMARELO", "Pessoal Jurídica"})
    AADD(aLegenda, {"BR_LARANJA", "Exportação"      })
    AADD(aLegenda, {"BR_MARROM", "Fornecedor Rural" })
    AADD(aLegenda, {"BR_PRETO", "Não Classificado"  })

    BrwLegenda(cCadastro, "Legenda ", aLegenda ) // Passar o parametros necessarios para montagem da tela de leganda
    
Return 
