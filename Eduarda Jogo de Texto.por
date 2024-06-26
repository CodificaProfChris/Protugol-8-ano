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
escreva("\n3. Caçador")
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

  }
}
}
escreva("/n>>menu<<")
escreva("/n1.combat")
escreva("/n2.descansar")
escrever("/n3.boss")
escrever("/n opcao")
leia(opcao)
enquanto(opcao < 1 ou opcao > 3){
escreva("opcao invalida ,digite novamente:")
leia(opcao)
}

se(opcao==1)
inteiro vida-monstro,ataque-monstro,defesa-monstro
vida-monstro = util.sorteia(20, 30)
ataque-monstro = util (5, 12)
defesa-monstro = util (3, 7)

escreva("/n em batalha")
enquanto(vida > 0 e vida-monstro > 0)
escreva("/n=== personagem===")
escreva("/n vida:", vida)
escreva("/n ataque", att)
escreva("/n defesa",def)

escreva("/n/n=== montro===")
escreva("vida:",vida-monstro)
escreva("/n ataque",ataque-monstro)
escreva("/n defesa:",defesa-monstro)

    inteiro dano_sofrido = ataque_monstro - def
          inteiro dano_causado = atk - defesa_monstro
         
          escreva("\n O monstro atacou Você, dano sofrido: ", dano_sofrido)
          vida = vida - (ataque_monstro - def)

          escreva("\n Você atacou o monstro, dano causado: ", dano_causado)
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
            escreva("\n\nVocê derrotou o monstro")
            inteiro ataque_ganho = util.sorteia(3, 5)
            atk = atk + ataque_ganho
            escreva(" Pontos de ataque ganhos: ", ataque_ganho)
            util.aguarde(3000)
            limpa()
            pare
          }
          se(opcao == 2)
          se(vida < 20)
          escreva("/n voce descansou e e ganhou 5 pontos de vida")
          vida = vida + 5 
          util.aguarde(5000)
          limpa()
          
          escreva(/n voce estava bem descasado (a) e comesou a treinar)
          util.aguarde(10000)
          escreva("voce ganhou + 5 pontos de vida")
          vida = vida + 5
          util.aguarde (5000)
          limpa()

        )

          }
        }


