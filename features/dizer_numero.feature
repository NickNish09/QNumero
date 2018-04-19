#language: pt
#encoding: utf-8

@dizer_numero
Funcionalidade: Dizer número
  Como jogador
  Para que eu fale um número para os outros adivinharem
  Eu quero poder digitar um número na sala

  Cenario: Colocar um número
    Dado que eu esteja em uma sala
    Quando eu preencher o campo para adivinhar numero com:
      |nome|nicholas|
      |chute|26     |
    E clicar no link "Chutar"
    Então devo ver meu nome numa tabela com meu palpite escondido