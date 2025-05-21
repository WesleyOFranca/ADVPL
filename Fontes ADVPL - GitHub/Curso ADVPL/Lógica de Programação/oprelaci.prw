#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

// Com operadores lógicos o ADVPl retorna .T. ou .F. como a lógica verdadeiro ou falso

User Function oprelaci()

	local nNum := 10
	Local nNum2 := 20

	Alert (nNum < nNum2) // menor
	Alert (nNum > nNum2) // maior
	Alert (nNum = nNum2) // igual
	Alert (nNum == nNum2) // exatamente igual (comparar texto)
	Alert (nNum2 <= nNum) // menor ou igual
	Alert (nNum2 >= nNum) // maior igual
	Alert (nNum2 != nNum) // diferente

// Operadores de Atribuição 

	Alert (nNum := 10) // Atribuição Simples
	Alert (nNum += nNum2) // Atrubição de Soma
	nNum -= nNum2 // Atribuião de subtração
	nNum *= nNum2 // Atribuição de Multiplica;áo 
	nNum2 /= nNum // Atribuiáo de divissão

	//Alert(nNum2 %= nNum) // Atribuição de módulo(resto da divisão)

Return
