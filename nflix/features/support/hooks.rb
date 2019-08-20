Before do
    @login_page = LoginPage.new
    @movie_page = MoviePage.new
    
end

Before("@login") do
    @login_page.go
    @login_page.logar("tony@stark.com", "pwd123")

end

After do |scenario|
    xote = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
    embed(xote, "image/png", "Evidência")
  end
  