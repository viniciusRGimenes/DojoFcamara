# language: pt

Funcionalidade: Adicionar e remover checkbox
    Para que eu possa adicionar ou remover um checkbox da página
    Sendo um usuario
    Posso inserir ou remover o checkbox

    Contexto: Acessar a pagina

        Dado que estou na página de dynamic controls

        @rm_button
        Cenário: Remover a checkbox
        
            E que a "A checkbox" está ná pagina
            Quando eu clicar no botão Remove
            Então deve exibir a mensagem "It's gone"
            Mas não deve exibir a checkbox

        @add_button
        Cenário: Adicionar a checkbox

            E que a checkbox foi removida
            Quando eu clicar no botão "Add"
            Então deve exibir a mensagem "It's back!"
            E A checkbox deverá aparecer na página