class Animal
    attr_accessor :nome, :cor, :idade
  
    def initialize(nome, idade)
      @nome = nome
      @idade = idade
    end
  
    def mostra_idade
      puts @nome + " tem " + @idade.to_s + " anos."
    end
  end
  
  class Cachorro < Animal
    def late
      puts @nome + " diz: -Au au!"
    end
  end
  
  class Gato < Animal
    def mia
      puts @nome + " diz: -Miau!"
    end
  end
  
  snoop = Cachorro.new("Snoop", 2)
  snoop.late
  snoop.mostra_idade
  
  spike = Cachorro.new("Spike", 4)
  spike.late
  spike.mostra_idade
  
  garfield = Gato.new("Garfield", 6)
  garfield.mia
  garfield.mostra_idade
  