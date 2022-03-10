

algoritmo "desafio_contribuintes"

var
   N, i : inteiro

   rendaSalario : vetor[0..9] de real
   pretacaoServico : vetor[0..9] de real
   ganhoCapital :  vetor[0..9] de real
   gastosMedicos :  vetor[0..9] de real
   gastosEducacionais :  vetor[0..9] de real

//   valorImposto :  vetor[0..9] de real    Não precisava
//   valorServico :  vetor[0..9] de real    Não precisava
//   valorCapital :  vetor[0..9] de real    Não precisava

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

 //     valorImposto[i] <- impostoSobreSalario(rendaSalario[i])    Não precisava

   //   se pretacaoServico[i] <> 0 entao    Não precisava
  //       valorServico[i] <- impostoSobreServicos(pretacaoServico[i])  Não precisava
//      fimse             Não precisava

  //    se ganhoCapital[i] <> 0 entao   Não precisava
//         valorCapital[i] <- impostoSobreGC(ganhoCapital[i])     Não precisava
//      fimse     Não precisava

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