#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} BANCO004
@author Wesley França
@since 11/01/2024
@version 1.0
@Description: Função de Inclusão via ExecAuto

    /*/
User Function BANCO005()

    Local aArea := GetArea()
    Local aDados := {}
    Private lMsErroAuto := .F. // Essa variavel deve ser declarado ao usar o ExcAuto como .F. 
                              // e só sera utilizada nos casos de erro onde o ExecAuto vai colocala como .T.

    aDados := {;
                {"B1_COD",  "0000002",                 Nil },; // Nil é valor não especificado
                {"B1_DESC", "MOUSE LOGITECH SEM FIO",  Nil },;
                {"B1_TIPO",    "AI",                   Nil },;
                {"B1_UM",      "UN",                   Nil },;
                {"B1_LOCPAD",  "01",                   Nil },;
                {"B1_PICM",     0,                     Nil },;
                {"B1_IPI",      0,                     Nil },;
                {"B1_CONTRAT", "N",                    Nil },;
                {"B1_LOCALIZ", "N",                    Nil },;
                }

    // Inicio do Controle de Transação

    Begin Transaction 

        // Iniciar a Chama a Rotina que deseja realizar a inclusão

        MsExecAuto({|x,y| MATA010(x,y)}, aDados, 3)   
        
                    // Para Realizar o ExecAuto é necessário passar os parametros dentos do bloco e pipes
                    // Informar a rotna e quais/ quantos parametros essa rotina vai usar 
                    // Informar Qual a Variavel/ Arquivo que será executado com os dados
                    // e informar o Numero da operação do ExecAuto 3 = Inclusão, 4 = Alteração e 5 = Exclusão

        // Caso ocorra algum erro 

            If lMsErroAuto
                
                Alert("Ocorreram erros Durante a Operação!")
                MostraErro() // Serve para mostar os erros no momento da execução do execauto

                DisarmTransaction() // Serve para desarmar as alterações que estão sendo realidas em caso de erro

            else
                
                MsgInfo("Operação Finalizada!", "Aviso")

            EndIf

    End Transaction

            RestArea(aArea)

 Return           
