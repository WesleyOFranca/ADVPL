#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*/{Protheus.doc} BLOCO
    @type User Function
    @author Wesley Franca
    @since 28/12/2023
    @version version 1
    /*/
User Function BLOCO()

    Local bBloco := {|| Alert("Olá Mundo!")}
        Eval (bBloco) // CHAMADA DO BLOCO COMPLETO

        bBloco := {|cMsg| MSGINFO(cMsg,)} // CAMADA COM PASSAGEM POR PARAMETROS 
        Eval (bBloco, "Estou Iniciando em Programação ADVPL") 

Return 
