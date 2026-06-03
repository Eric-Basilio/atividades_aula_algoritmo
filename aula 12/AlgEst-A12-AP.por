programa {
  real salario[10], inss, total_salarios =0, total_imp_renda =0, tot_contri_inss =0, total_sal_liq =0, percent_alt_sal, imp_renda, salario_liq[10], alt_sal =0
  cadeia nome[10]
  inteiro total_funcionarios =10

  funcao inicio() {
    

    para(inteiro i =0; i<total_funcionarios; i++){
      escreva("\nDigite o nome do funcionário ", i+1,": ")
      leia(nome[i])
      escreva("\nDigite o salário do funcionário ", nome[i],": ")
      leia(salario[i])
      
      se(salario[i]< 1903.98){
        se(salario[i]>1556.94){
          inss = salario[i] * 0.11 
        } senao se(salario[i]<1556.94){
          inss = salario[i]*0.08
        }
        imp_renda = 0
        salario_liq[i] = salario[i] - imp_renda - inss
      } senao se(salario[i] > 4664.68){
        se(salario[i]>1556.94){
          inss = salario[i] * 0.11 
        } senao se(salario[i]<1556.94){
          inss = salario[i]*0.08
        }
        imp_renda = 0.275*salario[i]
        salario_liq[i] = salario[i]- imp_renda - inss
      } senao se (salario[i]<=4664.68 e salario[i] >= 3751.06){
        se(salario[i]>1556.94){
          inss = salario[i] * 0.11 
        } senao se(salario[i]<1556.94){
          inss = salario[i]*0.08
        }
        imp_renda = salario[1] * 0.225
        salario_liq[i] = salario[i]- imp_renda - inss
      } senao se (salario[i]<=3751.05 e salario >=2826.66){
        se(salario[i]>1556.94){
          inss = salario[i] * 0.11 
        } senao se(salario[i]<1556.94){
          inss = salario[i]*0.08
        }
        imp_renda = salario[1] * 0.15
        salario_liq[i] = salario[i]- imp_renda - inss
      } senao se (salario[i]<=2826.65 e salario[i] >=1903.99){
        se(salario[i]>1556.94){
          inss = salario[i] * 0.11 
        } senao se(salario[i]<1556.94){
          inss = salario[i]*0.08
        }
        imp_renda = salario[1] * 0.075
        salario_liq[i] = salario[i]- imp_renda - inss
      }
      se (salario[i]>10000){
        alt_sal = alt_sal + salario[i]
      }
      total_salarios = total_salarios + salario[i]
      total_imp_renda = total_imp_renda + imp_renda
      tot_contri_inss = tot_contri_inss + inss
      total_sal_liq = total_sal_liq + salario_liq[i]
      percent_alt_sal = (alt_sal/total_salarios)*100
      limpa()
    }

    escreva("\nTotal de salários: R$", total_salarios)
    escreva("\nTotal a ser pago de imposto de renda: R$", total_imp_renda)
    escreva("\nTotal a ser pago como contribuição ao INSS: R$", tot_contri_inss)
    escreva("\nTotal de salários líquidos: R$", total_sal_liq)
    escreva("\nPercentual de altos salários: ", percent_alt_sal, "%\n\n")

    escreva("\n======Relacção Funcionário/Salário Líquido======")
    para(inteiro i=0; i<total_funcionarios; i++){
      escreva("\nFuncionário: ", nome[i])
      escreva("\nSalário bruto: R$", salario[i])
      escreva("\nSalário líquido: R$:", salario_liq[i])
      escreva("\n__________________________________________")
    }

  }
}
