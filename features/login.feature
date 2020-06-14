# language: pt

@complete_login
Funcionalidade: Login

    Para que eu possa acessar o  sistema
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu usuário e senha

    Contexto: Acesso a pagina de login
      Dado que o eu esteja na página de login

    @login_happy
    Cenário: Login realizado com sucesso
      Quando eu faço login com "tomsmith" e "SuperSecretPassword!"
      E clico em entrar
      E ver a seguinte mensagem:
    """
    Welcome to the Secure Area. When you are done click logout below.
    """

    @login_error
    Esquema do Cenario: Login sem sucesso
      Quando eu faço login com <usuario> e <senha>
      E clico em entrar
      Então devo ver a mensagem de erro <texto>

      Exemplos:
      | usuario    | senha                  | texto                       |
      | "Vinicius" | "SuperSecretPassword!" | "Your username is invalid!" |
      | "tomsmith" | "Pwd123"               | "Your password is invalid!" |
      | "Vinicius" | "Pwd123"               | "Your username is invalid!" |
      | ""         | "Pwd123"               | "Your username is invalid!" |
      | "tomsmith" | ""                     | "Your password is invalid!" |
      | ""         | ""                     | "Your username is invalid!" |
