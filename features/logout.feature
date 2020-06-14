# language: pt

@complete_login
@login
Funcionalidade: Logout
    Para que eu possa sair do sistema em segurança
    Sendo um usuario logado
    Posso deslogar do sistema

    @logout
    Cenário: Logout com sucesso
      Quando clicar no botão logout
      Então deverá exibir "You logged out of the secure area!"