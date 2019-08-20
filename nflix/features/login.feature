#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os filmes do Catálogo NinjaFlix
    Sendo um usuário previamente cadastrado
    Posso acessar o sistema com o meu email e senha

    @login_happy
    Cenario: Acesso

        Dado que eu acesso a tela de login
        Quando eu faço login com "tony@stark.com" e "pwd123"
        Então devo ver "Tony Stark" na área logada

    @login_happiless
    Esquema do Cenario: Tentar logar

        Dado que eu acesso a tela de login
        Quando eu faço login com <email> e <senha>
        Então devo ver a mensagem <texto>

    Exemplos: 
      | email                       | senha    | texto                          |
      | "tony@stark.com"            | "abc123" | "Usuário e/ou senha inválidos" |
      | "padrekevedo@noekziste.com" | "pwd123" | "Usuário e/ou senha inválidos" |
      | "tony&stark.com"            | "pwd123" | "Usuário e/ou senha inválidos" |
      | ""                          | "123456" | "Opps. Cadê o email?"          |
      | "tony@stark.com"            | ""       | "Opps. Cadê a senha?"          |



    # Cenario: Senha inválida

    #     Dado que eu acesso a tela de login
    #     Quando eu faço login com "tony@stark.com" e "abc123"
    #     Então devo ver a mensagem "Usuário e/ou senha inválidos"
    
    # Cenario: Email nao cadastrado

    #     Dado que eu acesso a tela de login
    #     Quando eu faço login com "padrekevedo@noekziste.com" e "pwd123"
    #     Então devo ver a mensagem "Usuário e/ou senha inválidos"
    
    # Cenario: Email incorreto

    #     Dado que eu acesso a tela de login
    #     Quando eu faço login com "tony&stark.com" e "pwd123"
    #     Então devo ver a mensagem "Usuário e/ou senha inválidos"

    # Cenario: Email não informado

    #     Dado que eu acesso a tela de login
    #     Quando eu faço login com "" e "pwd123"
    #     Então devo ver a mensagem "Opps. Cadê o email?"

    # Cenario: Senha não informada

    #     Dado que eu acesso a tela de login
    #     Quando eu faço login com "tony@stark.com" e ""
    #     Então devo ver a mensagem "Opps. Cadê a senha?"

