  Dado("eu tenho o seguinte titulo:") do |table|
    @new_movie = table.hashes.first
    Database.new.delete(@new_movie["Nome"])
  end
  
  Dado("a sinopse do filme é:") do |sinopse|
    @new_movie["Sinopse"] = sinopse
  end
  
  Dado("este filme tem os atores:") do |table|
    @new_movie["Atores"] = table.hashes
    
  end


  Quando("eu cadastro este filme") do
   
   @movie_page.create(@new_movie)

  end
  
  Então("o mesmo deve ser exibido na lista") do
    expect(page)
      .to have_css(
        "table tbody tr",
        text: @new_movie["Nome"]
      )
    # find("table tbody tr", text: @new_movie["Nome"])
  end