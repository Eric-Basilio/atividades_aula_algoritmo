programa 
{
	inclua biblioteca Util --> u
	
	inteiro excluir, confirma_exclusao, validacao = 0, renda, resta_renda
	
	/* arrays que serão minha simulação de objetos.
	Cada array é como se fosse uma propriedade do objeto. */
	cadeia nome_despesa[100], data_despesa[100]
	real valor_despesas[100], soma_despesas = 0
	
	// contador que me ajudará a referenciar o indice do array
	inteiro total_despesas = 0

	funcao mostrarLista()
	{
    soma_despesas = 0
		para(inteiro i = 0; i < total_despesas; i++)
		{
      soma_despesas = soma_despesas + valor_despesas[i]
			escreva("\nItem ", i,".", "\nDescrição: ",nome_despesa[i],". \nValor: ",valor_despesas[i], ". \nData: ", data_despesa[i], ".\n")
			escreva("-------------------------------------\n")
		}
    escreva("\nTotal geral das despesas: R$",soma_despesas, ".")
    resta_renda = renda - soma_despesas
    se(resta_renda>0){
      escreva("\nIrá sobrar R$",resta_renda, " no fim do mês.")
    } senao {
      escreva("\nIrá faltar R$",resta_renda*(-1), " no fim do mês.")
    }
	}
	
	funcao apagar()
	{
		para(inteiro i = excluir; i < total_despesas - 1; i++)
		{
			nome_despesa[i] = nome_despesa[i+1]
			valor_despesas[i] = valor_despesas[i+1]
			data_despesa[i] = data_despesa[i+1]
		}
		total_despesas = total_despesas - 1
	}
	
	funcao inicio() 
	{
		inteiro opcao, continuar

    escreva("Antes de iniciar, por favor digite o valor, em reais, de sua renda mensal: ")
    leia(renda)
    limpa()
		
		faca
		{			
			// página do menu inicial
			escreva("========== Menu Inicial ==========\n")
			escreva("\nBem-vindo ao Controle Financeiro!")
			escreva("\n\nEscolha uma das opções a baixo:")
			escreva("\n[1] Incluir despesa.")
			escreva("\n[2] Mostrar despesas.")
			escreva("\n[3] Excluir despesa.")
			escreva("\n[4] Sair.")
			escreva("\nEscolha: ")
			leia(opcao)

      // TESTA A VALIDADE DA OPÇÃO
      se(opcao <= 0 ou opcao > 4)
			{
				escreva("\nOpção inválida. \nEscolha de 1 a 4, de acordo com a necessidade.")
				u.aguarde(3000)
				limpa()
			}

			// possibilidades de escolhas do usuário
			escolha(opcao)
			{
				caso 1:
					continuar = 0
					enquanto(continuar != 2)
					{
						limpa()

						se(total_despesas < 3)
						{
							// coletando as informações do objeto
							escreva("===== Painel de Cadastro de Despesas =====")
							escreva("\nDigite o nome da despesa: ")
							leia(nome_despesa[total_despesas])
							escreva("Digite o valor total dessa despesa: ")
							leia(valor_despesas[total_despesas])
							escreva("Digite a data dessa despesa no formato dd/mm/aa: ")
							leia(data_despesa[total_despesas])

							// incrementanto o total de objetos. Isso que vai servir como índice
							total_despesas = total_despesas + 1
							escreva("\nItem cadastrado com sucesso!")
							u.aguarde(1000)
							limpa()

							// apresentando dados cadastrados ao usuário
							escreva("\nDespesas cadastradas até o momento: \n")
							mostrarLista()              
							
							enquanto(validacao <= 0 ou validacao > 2)
							{
								limpa()
								escreva("\nDespesas cadastradas até o momento: \n")
								mostrarLista()             
								escreva("\nDeseja adicionar mais uma despesa? \n[1] SIM \n[2] NÃO \nEscolha: ")
								leia(validacao)
							}
							
							se(validacao == 1)
							{
								continuar = 1
								validacao = 0
							}
							senao 
							{
								continuar = 2
								validacao = 0
								limpa()
							}
						} 
						senao 
						{
							escreva("Limite de despesas cadastradas atingido. \nVoltando à Tela Inicial.")
							u.aguarde(3000)
							limpa()
							continuar = 2
						}
					}
					pare

				caso 2:
					limpa()
					// verificando se já possui alguma despesa cadastrada
					se(total_despesas > 0)
					{
						escreva("===== Painel de Despesas Cadastradas =====\n")
						continuar = 0
						enquanto(continuar != 1)
						{
							mostrarLista()
							escreva("\nDeseja voltar ao menu anterior?\n[1] SIM\n[2] NÃO")
							escreva("\nEscolha: ")
							leia(continuar)
							limpa()
						}
					}
					senao 
					{
						escreva("\nNenhuma despesa cadastrada ainda!")
						u.aguarde(1000)
					}
					limpa()
					pare

				caso 3:
					limpa()
					continuar = 0
					se(total_despesas > 0)
					{
						enquanto(continuar != 2)
						{
							confirma_exclusao = 0
							escreva("===== Painel de Exclusão de Despesas =====\n")
							escreva("Digite o índice da despesa que deseja exluir ou digite ", total_despesas+1, " para voltar ao menu anterior \n")
							mostrarLista()
							escreva("\nEscolha: ")
							leia(excluir)
							
							se(excluir >= 0 e excluir < total_despesas)
							{
								escreva("\nO intem de índice ", excluir, " será escluído.\n[1] SIM\n[2] NÃO\nConfirma? ")
								leia(confirma_exclusao)
								
								escolha(confirma_exclusao)
								{
									caso 1:
										apagar()
										limpa()
										escreva("\nItem de índice ", excluir, " excluído com sucesso.\n")

										se(total_despesas > 0)
										{
											escreva("===== Cadastro de despesas Atualizado =====")
											mostrarLista()
										} 
										senao 
										{
											escreva("\nCadastro vazio.\nVoltando ao menu inicial.")
											u.aguarde(2000)
										}
										
										se(total_despesas > 0) 
										{
											escreva("\nDeseja excluir outro ítem?\n[1] SIM\n[2] NÃO\nEscolha: ")
											leia(continuar)
											limpa()
										} 
										senao 
										{
											continuar = 2
										}
										limpa()
										pare
										
									caso 2:
										limpa()
										escreva("Voltando à tela anterior.\n")
										u.aguarde(2000)
										limpa()
										pare
								}
							} 
							senao se (excluir == total_despesas+1)
							{
								limpa()
								continuar = 2
							}
							senao 
							{
								escreva("Digite um numero válido")
								u.aguarde(1500)
								limpa()
							}
						}
					}
					senao
					{
						limpa()
						escreva("Nenhuma despesa cadastrada!")
						u.aguarde(1000)
						continuar = 2
						limpa()
					}
					pare
			}
		} enquanto(opcao != 4)
	}
}
