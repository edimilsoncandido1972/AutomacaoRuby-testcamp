# require Faker 


class MoviePage
    include Capybara::DSL
  
    def sidebar
        SideBar.new
    end


    
    def upload(file)
      cover_file = File.join(Dir.pwd, "features/support/fixtures/" + file)
  
      Capybara.ignore_hidden_elements = false
      attach_file("upcover", cover_file)
      Capybara.ignore_hidden_elements = true
    end
  
    def create(movie)
      find(".movie-add").click
      find("input[placeholder$='filme?']").set movie["Nome"]
      # find("input[placeholder$='filme?']").set Faker::Movie.quote
      find("input[placeholder=Status]").click
      find(".el-popper li[class*=dropdown]", text: movie["Status"]).click
      find("input[name=year]").set movie["Data"].slice(6..10)
      find("input[name=release_date]").set movie["Data"]
      input_cast(movie["Atores"])
      find("textarea[name=overview]").set movie["Sinopse"]
      upload(movie["Capa"])
      click_on "Cadastrar"
    end
  
    def input_cast(cast)
      input_tags = find(".input-new-tag")
  
      cast.each do |ator|
        input_tags.set ator["Ator"]
        input_tags.send_keys :tab
      end
    end
  end
  
  # cover_file = cover_file.tr("/", "\\") if OS.windows?
  
  


