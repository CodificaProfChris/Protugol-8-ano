 programa
{
inclua biblioteca Util --> util
funcao inicio()
{
cadeia nome
inteiro classe, vida, atk, def


escreva("Digite o nome do seu personagem: ")
leia(nome)
escreva("Seja bem vindo(a)", nome, "!")
escreva("\n ESCOLHA SUA CLASSE ABAIXO:")


escreva("\n1. Guerreiro")
escreva("\n2. Mago")
escreva("\n3. Ca�ador")
escreva("\nESCOLHA:")
leia(classe)


se(classe == 1)
{
  vida = 28
  atk = 15
  def = 5
}
se(classe == 2)
{
  vida = 16
  atk = 12
  def = 10
}
se(classe == 3)
{
  vida = 12
  atk = 13
  def = 15
}
limpa()


inteiro opcao = 0


enquanto(opcao != 3 e vida > 0){
  escreva("\n >>MENU<< ")
  escreva("\n1. Combat ")
  escreva("\n2. Descansar ")
  escreva("\n3. Boss ")
  escreva("\n Op��o: ")
  leia(opcao)
  enquanto(opcao < 1 ou opcao > 3){
        escreva("Op��o inv�lida, digite novamente: ")
        leia(opcao)

         se(opcao == 1){

        inteiro vida_monstro, ataque_monstro, defesa_monstro
       
        vida_monstro = util.sorteia(20, 30)
        ataque_monstro = util.sorteia(5, 12)
        defesa_monstro = util.sorteia(3, 7)
       
        escreva("\n Em batalha")
        enquanto(vida > 0 e vida_monstro > 0){
          escreva("\n=== Personagem ===")
          escreva("\n Vida: ",vida)
          escreva("\n Ataque: ",atk)
          escreva("\n Defesa: ",def)
         
          escreva("\n\n=== Monstro ===")
          escreva("\n Vida: ", vida_monstro)
          escreva("\n Ataque: ", ataque_monstro)
          escreva("\n Defesa: ", defesa_monstro)
          inteiro dano_sofrido = ataque_monstro - def
          inteiro dano_causado = atk - defesa_monstro
         
          escreva("\n O monstro atacou Voc�, dano sofrido: ", dano_sofrido)
          vida = vida - (ataque_monstro - def)
          escreva("\n Voc� atacou o monstro, dano causado: ", dano_causado)
          vida_monstro = vida_monstro - (atk - defesa_monstro)


          util.aguarde(3000)
          limpa()


          se(vida  == 0){
            limpa()
            escreva("\n\nVoce foi derrotado!!!")
            escreva("\n === FIM DE JOGO ===")
            util.aguarde(9000)
            retorne
          }
         
          se(vida_monstro == 0){
            escreva("\n\nVoc� derrotou o monstro")
            inteiro ataque_ganho = util.sorteia(3, 5)
            atk = atk + ataque_ganho
            escreva(" Pontos de ataque ganhos: ", ataque_ganho)
            util.aguarde(3000)
            limpa()
            pare
            }
      se( opcao == 2){
        se(vida < 20){
          escreva("\nVoc� descansou e e ganhou 5 pontos de vida")
          vida = vida + 5
          util.aguarde(5000)
          limpa()
        }
        senao{
          escreva("\nVoc� estava bem desacansado(a) e começou a treinar")
          util.aguarde(10000)
          escreva("Voc� ganhou +5 pontos de vida")
          vida = vida + 5
          util.aguarde(5000)
          limpa()
          se( opcao == 3){
        inteiro vida_chefao, ataque_chefao, defesa_chefao
       
        vida_chefao = util.sorteia(20, 40)
        ataque_chefao = util.sorteia(10, 16)
        defesa_chefao = util.sorteia(9, 16)
        escreva("\n Em batalha")
        enquanto(vida > 0 e vida_chefao > 0){
          escreva("\n=== Personagem ===")
          escreva("\n Vida: ",vida)
          escreva("\n Ataque: ",atk)
          escreva("\n Defesa: ",def)
         
          escreva("\n\n=== Monstro ===")
          escreva("\n Vida: ", vida_chefao)
          escreva("\n Ataque: ", ataque_chefao)
          escreva("\n Defesa: ", defesa_chefao)
inteiro dano_sofrido = ataque_chefao - def
          inteiro dano_causado = atk - defesa_chefao
         
          escreva("\n O monstro atacou voc�, dano sofrido: ", dano_sofrido)
          vida = vida - (ataque_chefao - def)
          escreva("\n voc� atacou o chef�o, dano causado: ", dano_causado)
          vida_chefao = vida_chefao - (atk - defesa_chefao)


          util.aguarde(3000)
          limpa() se(vida  == 0){
            escreva("\n\nVoce foi derrotado!!!")
            util.aguarde(3)
            retorne
            se(vida_chefao == 0){
            escreva("\n\nvoc� derrotou o chef�o")
            escreva("\nvoc� ganhou o jogo!!!")
            retorne
          }
        }
      }
    }
  }
}
        }}}}}
          }


       
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  }
}
