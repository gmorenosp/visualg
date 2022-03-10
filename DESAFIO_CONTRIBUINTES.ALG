funcao impostoSobreSalario(quantia: real) : real
inicio
   se quantia < 36000 entao
      retorne quantia * 0
   senao
      se  quantia <= 60000 entao
         retorne  quantia * 0.10
      senao
         retorne  quantia * 0.20
      fimse
   fimse
fimfuncao

funcao impostoSobreServicos(quantia: real) : real
inicio
   retorne quantia * 0.15
fimfuncao

funcao impostoSobreGC(quantia: real) : real
inicio
   retorne quantia * 0.20
fimfuncao

funcao impostoBrutoTotal(salario: real; servicos: real; gc: real) : real
inicio
   retorne  impostoSobreSalario(salario) + impostoSobreServicos(servicos) +  impostoSobreGC(gc)
fimfuncao

funcao abatimento(salario: real; servicos: real; gc: real; gastosMedicos: real; gastosEducacionais: real) : real
var
   aux : real
   totalGastos : real

inicio
   aux <- impostoBrutoTotal(salario, servicos, gc) * 0.30

   totalGastos <- gastosMedicos + gastosEducacionais

   se aux > totalGastos   entao
      retorne totalGastos
   senao
      retorne aux
   fimse
fimfuncao

algoritmo "desafio_contribuintes"

var
   N, i : inteiro

   rendaSalario : vetor[0..9] de real
   pretacaoServico : vetor[0..9] de real
   ganhoCapital :  vetor[0..9] de real
   gastosMedicos :  vetor[0..9] de real
   gastosEducacionais :  vetor[0..9] de real
   valorImpostoBruto :  vetor[0..9] de real
   valorAbatimento :  vetor[0..9] de real
   impostoDevido: vetor[0..9] de real

inicio

   escreva("Quantos contribuintes você vai digitar? ")
   leia(N)

   para i de 0 ate N-1 faca

      escreval("Digite os dados do ", i+1,"o contribuinte:")
      escreva("Renda anual com salário: ")
      leia(rendaSalario[i])
      escreva("Renda anual com prestação de serviço: ")
      leia(pretacaoServico[i])
      escreva("Renda anual com ganho de capital: ")
      leia(ganhoCapital[i])
      escreva("Gastos médicos: ")
      leia(gastosMedicos[i])
      escreva("Gastos educacionais: ")
      leia(gastosEducacionais[i])
      escreval

   fimpara

   para i de 0 ate N-1 faca


      valorImpostoBruto[i] <- impostoBrutoTotal(rendaSalario[i], pretacaoServico[i], ganhoCapital[i])

      valorAbatimento[i] <- abatimento(rendaSalario[i], pretacaoServico[i], ganhoCapital[i], gastosMedicos[i], gastosEducacionais[i])

      impostoDevido[i] <- valorImpostoBruto[i] -  valorAbatimento[i]


      escreval("Resumo do ",i+1,"o contribuinte:")
      escreval("Imposto bruto total: ", valorimpostoBruto[i]:4:2)
      escreval("Abatimento: ", valorAbatimento[i]:4:2)
      escreval("Imposto devido: ", impostoDevido[i]:4:2)
      escreval

   fimpara

fimalgoritmo