##PROGRAMÇÃO ORIENTADA A OBJETOS
#Criado para lidar com softwares grandes e complexos
#4 pilares:
    #Abstração: Abstrarir uma entidade do mundo real e transforma-la em uma classe.
    #Encapsulamento: Dividir um programa em diversas partes tornando-o flexivel, facil de modificar e de incluir novas funcionalidades.
    #Herança: Criar uma classe com caracteristicas já existente (reaproveitamento de codigo).
    #Poliformismo: Utilizar um metodo de diferentes formas para diferentes objetos.

##OBJETO
    #É a representação na programação de um objeto do mundo real
    #Todos apresentam duas caracteristicas comum (Informações e comportamentos)
    #Exemplo:
        #Cachorro:
            # - Raça: Pastor Alemão
            # - Peso: 35 quilos
            # - Idade: 3 anos
        #Comportamento:
            # - Latir
            # - Comer
            # - Dormir
##CLASSE
    #Molde para criar outros objetos.
    #Exemplo: Planta de um carro -> utilizada como base para fazer varios carros a partir da planta original
##CLASSE NO RUBY
    # Palavra definida class seguida por Nome e finalizada com end
    # Nome da classe sempre começa com a letra maiuscula (CamelCase)
class Computador
    def turn_on
        puts 'turn on the computer'
    end
    def shutdown 
        puts 'shutdown the computer'
    end
end

computer = Computador.new
computer.turn_on
computer.shutdown

##HERANÇA
    #Para herdar caracteristicas de uma outra classe adicione na frente do nome de uma classe filha o "<" e depois o nome da classe pai.
    #Exemplo: class ClasseFilha < ClassePai
             #end
class Animal
    def comer
        puts 'estou comendo'
    end
    def dormir
        puts 'estou dormindo'
    end
end

class Cachorro < Animal
    def latir
        puts 'au au'
    end
end

class Gato < Animal
    def miar
        puts 'miau miua'
    end
end

class Vaca < Animal #fora da classe principal
    def mugir
        puts 'muuuu'
    end
end

puts 'cachorro'
cachorro = Cachorro.new 
cachorro.comer
cachorro.dormir
cachorro.latir

puts 'gato'
gato = Gato.new 
gato.comer
gato.dormir
gato.miar

puts 'vaca'
vaca = Vaca.new 
vaca.comer
vaca.dormir
vaca.mugir

##POLIFORMISMO
class Instrumento
    def escrever
        puts 'estou escrevendo'
    end
end

class Lapis < Instrumento
    def escrever
        super #escrever o metodo da classe pai
        puts 'Escrevendo à Lápis'
        super
    end
end

lapis = Lapis.new
lapis.escrever

##ESCOPO DE VARIAVEIS
    #Variavel Local
        #Declarada com a primeira letra minuscula ou sublinhada (nome ou _nome)
        #Pode acessar apenas onde foi criada
            #No proprio escopo (classe -> dento da classe | metodo -> só dentro do metodo)
class Bar
    def foo
        local = 'local é acessado apenas dentro deste metodo'
        print local
    end
end
bar = Bar.new
bar.foo

    #Variavel Global (NÃO USAR)
        #Declarada com o prefixo $
        #Pode ser acessada em qualquer lugar da classe que foi criada e seu valor é compartilhado entre todas as instancias de sua classe
class Bar
    def foo
        $global = 0
        puts $global
    end
end
            
class Baz
    def qux
        $global += 1
        puts $global
    end
end
            
bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global

    #Variavel de Classe
        #É declarada com o prefixo @@
        #Pode ser acessada em qualquer lugar da classe que foi criada e seu valor é compartilhado entre todas as instancias de sua classe
class User
    @@user_count = 0
    def add (name)
        puts "User #{name} adicionado"
        @@user_count += 1
        puts @@user_count
    end
end
first_user = User.new
first_user.add('João')

    #Variavel de Instância
        #Seu nome começa com @
        #Semelhante a variavel classe, porém seu valor não é compartilhado entre todas as instancias de sua classe
class User
    def add(name)
        @name = name
        puts = 'User adicionado'
        hello
    end
    def hello
        puts "Seja bem vindo, #{@name}"
    end
end
user = User.new
user.add('João')

##ATRIBUTOS
    #São atributos informações/caracteristicas dos objetos
    #São sempre privados e começa com o @ (variavel de instancia)
    #Só podemos acessar com os metodos
class Dog 
    def name
        @name
    end
    def name= name
        @name = name
    end
end

dog = Dog.new 
puts dog.name = 'Marlon'

#OBS: Os atributos só podem ser acessados pelos metodos, pois isso existe um metodo attr_acessor que cria os atributos da classe
class Dog 
    attr_accessor :name, :age
   end
    
dog = Dog.new 
puts dog.name = 'Marlon' 
puts dog.age = '1 ano'

##CONSTRUTORES
   #Sempre que a instância de uma classe é criada o ruby procura um metodo chamado initialize
   #Especifica valores padrões durante a construção da classe
class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    def check
      puts "Instância da classe iniciada com os valores:"
      puts "Name = #{@name}"
      puts "Idade = #{@age}"
    end
   end
    
person = Person.new('João', 12).check

#OBS: O número de parâmetros utilizados no método initialize é opcional.