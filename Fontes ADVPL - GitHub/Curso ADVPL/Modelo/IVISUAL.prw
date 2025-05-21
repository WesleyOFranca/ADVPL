#include "totvs.ch"
#include "Rwmake.ch"
#include "Protheus.ch"


//------------------------------------------------------------------------------------------
/*/{Protheus.doc} interface visual
criacao tela para input de dados

@author    paulo.bindo
@version   11.3.10.201812061821
@since     21/06/2019
/*/

User Function IVisual()

	Local cTitulo  := "Aula MSDIALOG"
	Local cTexto   := "CNPJ"
	Local cCliente := Space(6)
    Local lExec    := .T.
    Local oCliente
	Private nOpca  := 0
	Private oDlg
    Private cCGC   := Space(13)

    While lExec == .T.

	DEFINE MSDIALOG oDlg TITLE cTitulo FROM 000,000 TO 220,380 PIXEL // cabeçalho e definição do tamanho da tela

	@ 001,001 TO 100, 150 OF oDlg PIXEL // Borda da tela

	// Objeto 1

	@ 010,010 SAY cTexto SIZE 55, 00 OF oDlg PIXEL
    @ 007,030 MSGET cCGC SIZE 55, 10 OF oDlg PIXEL 	PICTURE "@R 99.999.999/9999-99" //VALID ExistCpo("SA1", M->cCGC)

	// Objeto 2

	@ 026,010 SAY "Cliente"  SIZE 55, 00 OF oDlg PIXEL
    @ 025,030 MSGET oCliente VAR cCliente SIZE 55, 10 OF oDlg COLORS 0,16777215 F3 "SA1GCT" PIXEL


	DEFINE SBUTTON FROM 005, 160 TYPE 1 ACTION (nOpca := 1,oDlg:End()) ENABLE OF oDlg 
	DEFINE SBUTTON FROM 020, 160 TYPE 2 ACTION (nOpca := 2,oDlg:End()) ENABLE OF oDlg 
    @ 035, 160 BUTTON oBtnExec PROMPT "Limpar" SIZE 026, 010 OF oDlg ACTION(cCGC := Space(13), cCliente:= Space(6)) PIXEL

	ACTIVATE MSDIALOG oDlg CENTERED

    If nOpca == 1 .AND. cCGC == Space(13)

		MsgAlert("Preencher CNPJ/ CPF", "ATENCAO")

    ElseIf nOpca == 2
        lExec := .F.
		RETURN
    
    EndIf

	If nOpca == 1 .AND. cCGC != Space(13) .AND. Len(cCGC) >= 11 .AND. Len(cCGC) <= 14

	MsgInfo("O CNPJ DIGITADO FOI :" + cCGC )
        lExec := .F.

    EndIf

EndDo


    

RETURN


