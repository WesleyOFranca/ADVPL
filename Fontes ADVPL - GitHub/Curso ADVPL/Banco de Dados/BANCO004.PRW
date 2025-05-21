#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'


 /*/{Protheus.doc} BANCO004
@author Wesley França
@since 11/01/2024
@version 1.0
@Description: Função de Alteração de Dados do Banco com Reclok

    /*/
User Function BANCO004() // U_BANCO004()

    Local aArea := SB1-> (GetArea())

        DbSelectArea('SB1')
        SB1-> (DbSetOrder(1))
        SB1-> (DbGoTop())

    // Iniciar a Transação

    Begin Transaction 
    
    // Serve para dar abertura da transação de alteração de banco deixando a tabela exclusiva para o programa

        MsgInfo("A Descrição do Produto Será Alterada!", "Atenção")

    If SB1->(DbSeek(FwxFilial("SB1") + '0000001'))

        Reclock('SB1', .F.) // Serve para bloquear o registro que está sendo alterado
                            // .F. Trava o registro para alteração e .T. Trava para novas incluões

        Replace B1_DESC With "NOTEBOOK DELL LATITUDE 7480" 
        
        // Replace serve como um "Altere" logo depois deve ser passado o campo
        // With ser como um "Com" e logo depois deve ser passado o dado

            SB1->(MsUnLock()) // MsUnLock() destrava o reclock

    EndIf

        MsgAlert("Alteração Efetuada!", "Atenção")

    // DisarmTransaction() pode ser usado para desarmar as alterações realizadas em caso de algum erro

    End Transaction // Finaliza a abertura da tranzação na tebela 

    RestArea(aArea) 

Return
