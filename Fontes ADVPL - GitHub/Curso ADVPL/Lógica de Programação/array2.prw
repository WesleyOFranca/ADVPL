#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 /*/{Protheus.doc} aVetor2
    @type  Function
    @author Wesley França
    @since 25/10/2023
    @version 1
    /*/
User Function aVetor2() 
    
    /**
        AADD() - PERMITE A INSERÇÃO DE UM ITEM EM UM ARRAY JÁ EXISTENTE
        AINS() - PERMITE A INSERÇÃO DE UM ELEMENTO EM QUALQUER POSIÇÃO DO ARRAY
        ACLONE() - REALIZA A CÓPIA DE UM ARRAY PARA O OUTRO
        ADEL() - PERMITE A EXCLUSÃO DE UM ELEMENTO DO ARRAY, TORNANDO O ULTIMO VALOR NULL
        ASIZE() - REDEFINE A ESTRUTURA DE UM ARRAY PRÉ-EXISTENTE ADICIONANDO OU REMOVENDO
        LEN() - RETORNA A QUANTIDADE DE ELEMENTOS DE UMA ARRAY
    **/
       
Local aVetor := {10, 20, 30}

/*  
    AaDd(aVetor, 40) // OS PARÂMETROS SÃO VARIAVEL E VALOR QUE DEVE SER ADICIONADO
    Alert(Len(aVetor)) 
*/

/*  
    Ains(aVetor,2) // OS PARÂMETROS SÃO VARIAVEL E POSIÇÃO QUE DEVE SER ADICIONADO
    aVetor[2] := 200 // DEVE-SE DAR VALOR AO ELEMENTO CRIADO POIS O MESMO FOI INCLUIDO COMO NULO
    Alert(aVetor [2])
    Alert(Len(aVetor)) // O ARRAY SEMPRE PERMANECERAR COM A QUANTIDADE DE ELEMENTOS IGUAIS, SERÁ APENAS SUBSTITUIDO
*/

/* Local aVetor2 := AClone(aVetor) // REALIZA UM CLONE DO ARRAY INFORMADO NO PARAMETRO

        For nCount := 1 To Len(aVetor2)
            Alert(aVetor2[nCount])
        Next nCount  
*/

/*
        Adel (aVetor, 2)  // ADEL EXCLUI O ELEMENTO DO ARRAY INFORMADO NO PARAMETRO E MUDA O ULTIMO PARA NULL
        Alert (aVetor[3])
        Alert (Len(Avetor))
        Alert (aVetor[2])
*/


        Asize (Avetor,2) // ASIZE REDEFINE O TAMANHO DO ARRAY EXCLUINDO O ULTIMO ELEMETO
         Alert (Len(Avetor))
Return
