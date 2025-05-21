#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} MBRW00
@author Wesley França
@since 11/01/2024
@version 1.0
@Description: Criação de Tela MBrowse

/*/

User Function MBRW00()

    Local cAlias := "SZ1"
    Private cCadastro := "Cadastros Produtos MBROWSE"
    Private aRotina := {}

    // Criando Botões para o Menu da tela 

    AADD(aRotina, {"Pesquisar", "AxPesqui", 0, 1}) // Adicionar ao array as opções informando o nome o botão, rotina, numero reservado sempre 0 e o tipo de operação (1,2,3...)
    AADD(aRotina, {"Visualizar", "AxVisual", 0, 2})
    AADD(aRotina, {"Incluir", "AxInclui", 0, 3})
    AADD(aRotina, {"Alterar", "AxAltera", 0, 4})
    AADD(aRotina, {"Excluir", "AxDeleta", 0, 5})
    AADD(aRotina, {"Saudação", "U_OlaMundo", 0, 6}) // Operação 6 é outras ações

    dbSelectArea(cAlias)
    dbSetOrder(1)

    MBrowse(,,,,cALIAS) // é uma tela com opçoes de alteraçoes com a AxCadastros sem necssidade de passar parametros apenas 4 virgulas e no filial a tabela

Return Nil
