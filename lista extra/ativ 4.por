programa {

inclua biblioteca Util --> u
inclua biblioteca Texto --> t

  cadeia pizza = "", ingredientes = "", resposta=""
  inteiro i, rodada = 1, acumulador_sorteados[18], v=0, i_temp, pontuacao =0, tamanho_ingredientes, tamanho_resposta
  logico teste = falso

// funções de apoio à lógica do jogo
	funcao caso_pizza(inteiro i){
  escolha (i) {
      caso 1:
        pizza = "Pizza Dracarys"
        ingredientes = "8,9"
        pare
      caso 2:
        pizza = "Pizza Fazendinha"
        ingredientes = "3,4,10"
        pare
      caso 3:
        pizza = "Pizza Três Porquinhos"
        ingredientes = "10,10,10"
        pare
      caso 4:
        pizza = "Pizza Super Mário Bros"
        ingredientes = "6"
        pare
      caso 5:
        pizza = "Pizza Liquída"
        ingredientes = "1,3"
        pare
      caso 6:
        pizza = "Pizza Coelhinho Bros Tradicional"
        ingredientes = "1,2,5,6"
        pare
      caso 7:
        pizza = "Pizza Churrasco Inesperado"
        ingredientes = "4,10"
        pare
      caso 8:
        pizza = "Pizza Fondue de Coelho"
        ingredientes = "2,5"
        pare
      caso 9:
        pizza = "Pizza Laticínios"
        ingredientes = "2,3"
        pare
      caso 10:
        pizza = "Pizza Coelho de fogo"
        ingredientes = "5,8"
        pare
      caso 11:
        pizza = "Pizza Gambá da Páscoa Tradicional"
        ingredientes = "1,2,4,5"
        pare
      caso 12:
        pizza = "Pizza Ovopimelo"
        ingredientes = "6,8,9"
        pare
      caso 13:
        pizza = "Pizza Peppa Doce"
        ingredientes = "5,10"
        pare
      caso 14:
        pizza = "Pizza Gambá em Chamas"
        ingredientes = "4,8"
        pare
      caso 15:
        pizza = "Pizza Peppementa Tradicional"
        ingredientes = "1,2,7,8"
        pare
      caso 16:
        pizza = "Pizza Floresta Encantada"
        ingredientes = "6,9"
        pare
      caso 17:
        pizza = "Pizza Coelho Bota Ovo?"
        ingredientes = "5,9"
        pare
      caso 18:
        pizza = "Pizza Vermelha"
        ingredientes = "1,7,8"
        pare
    }
}

	funcao mostra_opcoes(){
      escreva("\n====RODADA ",rodada,"=====\n\n")
	    escreva("Opções de ingredientes:\n")
	    escreva("[1]Molho de tomate\n")
	    escreva("[2]Queijo\n")
	    escreva("[3]Leite de cabra\n")
	    escreva("[4]Presunto de gambá\n")
	    escreva("[5]Chocolate do Coelhinho da Páscoa\n")
	    escreva("[6]Cogumelo do Mário\n")
	    escreva("[7]Pepperoni\n")
	    escreva("[8]Pimenta malagueta\n")
	    escreva("[9]Ovos de dragão\n")
	    escreva("[10]Bacon\n")	
	}

	funcao pede(){
        caso_pizza(i)
		    acumulador_sorteados[(rodada-1)]= i
        escreva("\nA pizza sorteada foi: ", pizza, ".")
        escreva("\nEscreva, separado por vírgulas e em ordem crescente, os ingredientes da ", pizza, ": ")
        leia(resposta)
}

	funcao testa_validade(){
        v=0
				faca{
				se ( i_temp == acumulador_sorteados[v]){
					teste = falso
				} senao se (i_temp != acumulador_sorteados[v]){
					teste = verdadeiro
				}
				v = v + 1
			}enquanto (v <rodada e teste == verdadeiro)
	}

  funcao logica_central_jogo(){
            v=0
	          tamanho_ingredientes = t.numero_caracteres(ingredientes)
            tamanho_resposta = t.numero_caracteres(resposta)
            se (tamanho_resposta == tamanho_ingredientes){
	       		faca{
					    se(t.obter_caracter(ingredientes, v) == t.obter_caracter(resposta, v)){
	               	teste = verdadeiro
	           		} senao se (t.obter_caracter(ingredientes, v) != t.obter_caracter(resposta, v)) {
	             	teste = falso
	           		}
	       			v=v+1
	       		}enquanto(v<tamanho_resposta e teste== verdadeiro)
	        } senao se (tamanho_resposta != tamanho_ingredientes) {
	        	teste = falso
	        }
	        
	        se(teste == verdadeiro){
              limpa()
	            escreva("\nParabéns, você acertou!")
	            pontuacao = pontuacao +1
              se (pontuacao >1){
                escreva("\nVocê tem ", pontuacao, " pontos.")
              } senao se (pontuacao ==1){
                escreva("\nVocê tem ", pontuacao, " ponto.")
              } senao se(pontuacao ==0){
                escreva("\nVocê está com 0 pontos.")
              }            
	          } senao se (teste == falso){
              limpa()
	            escreva("\nPoxa, que pena.")
              escreva("\nVocê não pontuou nessa rodada.\nContinua com ", pontuacao, " pontos.")
	          }
			rodada = rodada + 1
			u.aguarde(2000)
			limpa()
  }

//começando o jogo
	funcao inicio() {
	    faca{
	    		se (rodada ==1){
            i = u.sorteia(1,18)
	    			mostra_opcoes()
			      pede()
            logica_central_jogo()
	    			
		} senao se (rodada !=1){
      // definindo a pizza da rodada sem repetir uma que já foi
			teste = verdadeiro
			i_temp = u.sorteia(1,18)
			testa_validade()
			se (teste == verdadeiro){
				i = i_temp
			} senao se (teste == falso){
				faca{
					i_temp = u.sorteia(1,18)
					testa_validade()
				} enquanto(teste == falso)
				i = i_temp
			}
      // iniciando a nova rodada
      mostra_opcoes()
      pede()
      logica_central_jogo()
		}
	      
	    } enquanto (rodada<=18)
	    
      //respostas personalizadas no fim do jogo
	    se (pontuacao >=16){
	    	escreva("\n\n====Fim de jogo====\n")
        escreva("\nVocê consegiu ", pontuacao, " pontos.")
        escreva("\nRecebeu o título: Mestre-cuca maluco.\n\n")
	    } senao se (pontuacao >= 12 e pontuacao < 16){
	    	escreva("\n\n====Fim de jogo====\n")
        escreva("\nVocê consegiu ", pontuacao, " pontos.")
        escreva("\nRecebeu o título: Iniciante Louco.\n\n")
	    } senao se (pontuacao >= 6 e pontuacao < 12){
	    	escreva("\n\n====Fim de jogo====\n")
        escreva("\nVocê consegiu ", pontuacao, " pontos.")
        escreva("\nRecebeu o título: Treinee de hospício.\n\n")
	    } senao se (pontuacao <= 5){
	    	escreva("\n\n====Fim de jogo====\n")
        escreva("\nVocê consegiu ", pontuacao, " pontos.")
        escreva("\nRecebeu o título: Estagiário lelé.\n\n")
	    }
		}
	    }
