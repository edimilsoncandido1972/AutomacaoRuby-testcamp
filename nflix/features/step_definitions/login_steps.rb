Dado("que eu acesso a tela de login") do
   
    @login_page.go
    
end
  
Quando("eu faço login com {string} e {string}") do |email, senha|

    # login_page = LoginPage.new
    @login_page.logar(email, senha)

    # campo_email = find("#emailId")
    # campo_email.set email
    # campo_senha = find("#passId")
    # campo_senha.set senha
    # click_button "Entrar"
end
  

Então("devo ver {string} na área logada") do |valor_esperado|
    expect(@movie_page.sidebar.logged_user).to have_text valor_esperado
end

# Então("devo ver {string} na área logada") do |valor_esperado|
    # expect(page).to have_text valor_esperado
# end

Então("devo ver a mensagem {string}") do |valor_esperado|
    expect(@login_page.box_alerta).to have_text valor_esperado
end
  

