programa {
  inclua biblioteca Util --> util
  funcao inicio() {
    cadeia nome
inteiro classe, vida, atk, def, opcao = 0, vida_monstro, ataque_monstro, defesa_monstro


escreva("Digite o nome do seu personagem: ")
leia(nome)

escreva("Seja bem vindo(a)", nome, "!")
escreva("\n Escolha sua classe abaixo:")

escreva("\n1. Guerreiro")
escreva("\n2. Mago")
escreva("\n3. Caçador")
escreva("\nDigite o número referente a classe de sua escolha: ")
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

enquanto(opcao != 3 e vida > 0){ escreva("\n --Menu-- ")
  escreva("\n1. Combate ")
  escreva("\n2. Descansar ")
  escreva("\n3. Boss ")
  escreva("\n Opção: ")
  leia(opcao)


enquanto(opcao < 1 ou opcao > 3){ escreva("Opção inválida, digite novamente: ")
        leia(opcao)}
        se(opcao == 1){
        
        vida_monstro = util.sorteia(20, 50)
        ataque_monstro = util.sorteia(5, 22)
        defesa_monstro = util.sorteia(2, 12)}
        
        escreva("-Em Batalha-")
        enquanto(vida > 0 e vida_monstro > 0){escreva("\n=== Personagem ===")
          escreva("\n Vida: ",vida)
          escreva("\n Ataque: ",atk)
          escreva("\n Defesa: ",def)
         
          escreva("\n\n=== Monstro ===")
          escreva("\n Vida: ", vida_monstro)
          escreva("\n Ataque: ", ataque_monstro)
          escreva("\n Defesa: ", defesa_monstro)}
        
          inteiro dano_sofrido = ataque_monstro - def
          inteiro dano_causado = atk - defesa_monstro
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        }


  }
}