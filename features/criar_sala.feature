#language: pt
#encoding: utf-8

@criar_sala
Funcionalidade: criar_sala
  Como usuário
  Para que eu diga um número a ser adivinhado
  Eu quero criar uma sala

  Cenario: Criar sala
    Dado que eu esteja na página inicial
    Quando eu clicar no botão "Nova sala"
    E preencher o formulário com:
    |room_name|Sala de Moutinho|
    E clicar no botão "Enviar"
    Então eu devo ser redirecionado para página inicial com a nova sala criada
