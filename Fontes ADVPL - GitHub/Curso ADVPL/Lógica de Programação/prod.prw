#INCLUDE 'protheus.ch'
#INCLUDE "rwmake.ch"

/*/
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �NOVO2     � Autor � AP6 IDE            � Data �  06/06/20   ���
�������������������������������������������������������������������������͹��
���Descricao � Codigo gerado pelo AP6 IDE.                                ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � AP6 IDE                                                    ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
/*/

User Function PROD()

//���������������������������������������������������������������������Ŀ
//� Declaracao de Variaveis                                             �
//�����������������������������������������������������������������������

//Local cVldAlt := ".T." // Validacao para permitir a alteracao. Pode-se utilizar ExecBlock.
//Local cVldExc := ".T." // Validacao para permitir a exclusao. Pode-se utilizar ExecBlock.

Private cString := "SZ1"
Private cPerg   := "SZ1"

dbSelectArea(cString)
dbSetOrder(1)

Pergunte(cPerg,.F.)
SetKey(123,{|| Pergunte(cPerg,.T.)}) // Seta a tecla F12 para acionamento dos parametros

AxCadastro(cString,"Cadastro de Produtos")

Set Key 123 To // Desativa a tecla F12 do acionamento dos parametros

U_Menudef()

Return

Static Function Menudef()
Local aRotina := {{"Pesquisar" ,"AxPesqui",0,1} ,;
{"Visualizar" ,"AxVisual",0,2} ,;
{"Incluir" ,"AxInclui",0,3} ,;
{"Alterar" ,"AxAltera",0,4} ,;
{"Excluir" ,"AxDeleta",0,5}}

Return aRotina
