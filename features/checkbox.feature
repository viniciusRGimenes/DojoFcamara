# language: pt

Funcionalidade: Adicionar e remover checkbox
  Para que eu possa interagir com o checkbox
  Sendo um usuario
  Posso ativar ou desativar o checkbox

  Contexto:
    Dado que estou na página de dynamic controls
    
    @true_check
    Cenário: Seleção do checkbox ao entrar na página
      Quando selecionar o checkbox
      Então a checkbox deverá exibir marcado

    @false_check
    Cenário: Des-seleção do checkbox ao entrar na página
      E e o checkbox está marcada
      Quando desmarcar
      Então o checkbox deverá exibir desmarcado

    @true_check_add
    Cenário: Seleção após remoção e adição do checkbox
      E a checkbox foi adicionada
      Quando marcar
      Então a checkbox deverá exibir marcado

    @false_check_add
    Cenário: Desmarcar após remoção e adição do checkbox
      E a checkbox foi adicionada
      E e o checkbox está marcada
      Quando desmarcar
      Então o checkbox deverá exibir desmarcado