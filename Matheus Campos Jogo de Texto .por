programa
{
	inclua biblioteca Util

	funcao inicio()
	{
		cadeia nome
		inteiro classe, vida = 0, atk = 0, def = 0		
		escreva("Digite o nome do seu personagem: ")
		leia(nome)

		escreva("Seja bem vindo(a) ", nome, "!")

		escreva("\n\n === Classes ===")
		escreva("\n1. Guerreiro")
		escreva("\n2. Mago")
		escreva("\n3. Ca�ador")
		escreva("\nClasse: ")
		leia(classe)

		se(classe == 1){
			vida = 28
			atk = 15
			def = 5
		}
		se(classe == 2){
			vida = 16
			atk = 12
			def = 10
		}
		se(classe == 3){
			vida = 12
			atk = 13
			def = 15
		}

		limpa()

		escreva(" Historia aqui")

		inteiro opcao = 0
		enquanto(opcao != 3 e vida > 0){
			escreva("\n\n === Menu ===")
			escreva("\n1. Combater monstro")
			escreva("\n2. Descansar (+5 HP)")
			escreva("\n3. Combater o vilão final")
			escreva("\nOpção: ")
			leia(opcao)
			enquanto(opcao < 1 ou opcao > 3){
				escreva("Opção inválida, digite novamente: ")
				leia(opcao)
			}

			se(opcao == 1){

				inteiro vida_monstro, ataque_monstro, defesa_monstro
				
				vida_monstro = Util.sorteia(20, 30)
				ataque_monstro = Util.sorteia(5, 12)
				defesa_monstro = Util.sorteia(3, 7)
				
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
					
					escreva("\n O monstro atacou você, dano sofrido: ", dano_sofrido)
					vida = vida - (ataque_monstro - def)
					escreva("\n Você atacou o monstro, dano causado: ", dano_causado)
					vida_monstro = vida_monstro - (atk - defesa_monstro)

					Util.aguarde(3000)
					limpa()

					se(vida  == 0){
						limpa()
						escreva("\n\nVoce foi derrotado!!!")
						escreva("\n === FIM DE JOGO ===")
						Util.aguarde(9000)
						retorne
					}
					
					se(vida_monstro == 0){
						escreva("\n\nVocê derrotou o monstro")
						inteiro ataque_ganho = Util.sorteia(3, 5)
						atk = atk + ataque_ganho
						escreva(" Pontos de ataque ganhos: ", ataque_ganho)
						Util.aguarde(3000)
						limpa()
						pare
					}
				}

			}
			se( opcao == 2){
				se(vida < 20){
					escreva("\nVocê descansou e e ganhou 5 pontos de vida")
					vida = vida + 5
					Util.aguarde(5000)
					limpa()
				}
				senao{
					escreva("\nVocê estava bem desacansado(a) e começou a treinar")
					Util.aguarde(10000)
					escreva("Você ganhou +5 pontos de vida")
					vida = vida + 5
					Util.aguarde(5000)
					limpa()
				}
			}
			se( opcao == 3){
				inteiro vida_chefao, ataque_chefao, defesa_chefao
				
				vida_chefao = Util.sorteia(20, 40)
				ataque_chefao = Util.sorteia(10, 16)
				defesa_chefao = Util.sorteia(9, 16)

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
					
					escreva("\n O chefao atacou voc�, dano sofrido: ", dano_sofrido)
					vida = vida - (ataque_chefao - def)
					escreva("\n Você atacou o chefão, dano causado: ", dano_causado)
					vida_chefao = vida_chefao - (atk - defesa_chefao)

					Util.aguarde(3000)
					limpa()

					se(vida  == 0){
						escreva("\n\nVoce foi derrotado!!!")
						Util.aguarde(3)
						retorne
					}
					se(vida_chefao == 0){
						escreva("\n\nVocê derrotou o chefão")
						escreva("\nVocê ganhou o jogo!!!")
						retorne
					}
				}
			}
		}
	}
}
