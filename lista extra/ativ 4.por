programa {

inclua biblioteca Util --> u
inclua biblioteca Texto --> t
inclua biblioteca Tipos

  cadeia pizza = "", ingredientes = ""
    inteiro i

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

  funcao inicio() {

    inteiro rodada = 1, tamanho_ingredientes, tamanho_resposta
    cadeia resposta
    logico teste falso

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

    faca{
      se(rodada ==1){
        i = u.sorteia(1,18)
        caso_pizza(i)
        tamanho_ingredientes = t.numero_caracteres(ingredientes)
        tamanho_resposta = t.numero_caracteres(resposta)
        //tamanho_ingredientes = Tipos.caracter_para_inteiro(t.numero_caracteres(ingredientes), 10)
        //tamanho_resposta = Tipos.caracter_para_inteiro(t.numero_caracteres(resposta), 10)

        se(tamanho_resposta == tamanho_ingredientes){
          para(inteiro v =0; v < tamanho_ingredientes e teste == verdadeiro; v++){
            se(t.obter_caracter(ingredientes, v) == t.obter_caracter(resposta, v)){
                teste = verdadeiro
            } senao {
              teste = falso
            }
          }
          se(teste == verdadeiro){
            escreva("\nParabéns, você acertou!")
          } senao se (teste == falso){
            escreva("Poxa, que pena.")
          }
        }

      }
    } enquanto(rodada <=18)
    } 
  }
