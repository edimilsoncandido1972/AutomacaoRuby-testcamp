class LoginPage
    include Capybara::DSL
  
    def go
      visit "http://nflix.papito.io"
    end
  
    def logar(email, senha)
      find("#emailId").set email
      find("#passId").set senha
      click_button "Entrar"
    end
  
    def box_alerta
      find(".card-login .alert")
    end

    def stark_nome
        find(".user")
    end

  end
  