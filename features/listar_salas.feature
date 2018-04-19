#language: pt
#encoding: utf-8

@listar_salas
Funcionalidade: Listar Salas
  Como usuario
  Para que eu entre numa sala para jogar
  Eu quero ver a lista de salas

  Cenario: Usuario entra na pagina inicial e ve as salas
    Dado que eu esteja na página inicial
    Então eu devo ver a lista de salas disponiveis para jogar
