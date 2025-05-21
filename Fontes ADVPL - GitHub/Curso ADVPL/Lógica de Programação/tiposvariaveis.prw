#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

/*

Tipos de Variáveis.:

LOCAL := São visiveis em qualquer local do fonte na qual foram declaradas

STATIC := Pode ser declarada fora e dentro da função porém se for declarada dentro,
          só poder ser usada dentro da função onde foi declarada.

PRIVATE := É um tipo de varialvel transitória só pode ser aplicada a função que foi chamada,
           e após a fun'~ao executada ela é "Eliminada"

PUBLIC  := É visivel em todo o programa até que uma variavel PRIVATE assuma com o mesmo nome,
           não recomendado devido ela poder receber outros valores de outros escopos de variavel

 **/

/*/{Protheus.doc} nomeFunction
    (long_description)
    @type  Function
    @author user
    @since 08/09/2023
    @version version
    @param param_name, param_type, param_descr
    @return return_var, return_type, return_description
    @example
    (examples)
    @see (links_or_references)
    /*/
 
Static cStat := Date()

 user Function escopo1()

    Local nVar0 := 1
    Local nVar1 := 20

    Private cPri := "Private!"

    Public __cPublic := "RCTI"    // Variavel public é iniciada com __ 

    TestEscop (nVar0, @nVar1)
    
    MsgInfo ("Fonte Executado Com Sucesso, Parabéns!")

 Return

 // --------------- Função Static ----------------- (Separador de função)

Static Function TestEscop (nValor1, nValor2)

    Local __cPublic := "Alterei"
    Default nValor1 := 0

    // Alterando Conteudo da variavel

    nValor2 := 10

    // Mostrar conteudo da variavel private

    Alert ("Private: " + CValtochar(Cpri))

    // Alterar o valor da variavel public

    Alert ("Publica: " + CValtochar(__cPublic))

    MsgAlert (nValor2)
    Alert ("Variavel Static: " + CValtochar(cStat))

Return
