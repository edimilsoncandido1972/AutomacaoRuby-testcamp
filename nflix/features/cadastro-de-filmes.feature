#language:pt

Funcionalidade: Cadastro de filmes
    Para que eu possa disponibilizar um novo título
    Sendo um gestor de catalogo
    Posso cadastrar um novo filmes

    @new_movie @login
    Cenario: Novo filme

        Dado eu tenho o seguinte titulo:
            | Nome   | Status     | Data       | Capa         |
            | Coringa | Disponível | 18/02/2020 | coringa.jpg |
        E a sinopse do filme é:
        """
        O cara tava dentro do PC  e tomou um piula muito doida e do nada aprendeu Kungu-fu
        """
        E este filme tem os atores:
            | Ator            |
            | Keanu Reeves    |
            | Morpheu         |
            | Roberto Bolanos |
         Quando eu cadastro este filme
         Então o mesmo deve ser exibido na lista