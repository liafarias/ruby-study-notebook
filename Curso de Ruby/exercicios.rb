######EXERCICIO AULA 1######
puts 'Hello, world!';
puts 'Curso de Ruby';
puts 'estou aprendendo Ruby';


######EXERCICIO AULA 2######
#Crie um programa que receba o nome e idade de uma pessoa e no final exiba estes dois dados em uma única frase.
puts 'Digite seu nome';
nome = gets.chomp;
puts 'Digite sua idade';
idade = gets.chomp;
puts "Olá, seu nome é #{nome}, sua idade é #{idade}."

#Crie um programa que que receba dois números inteiros e no final exiba a soma, subtração, adição e divisão entre eles.
puts 'Digite um numero inteiro';
inteiro1 = gets.chomp.to_i; #entrada de numeros
puts 'Digite outro numero inteiro';
inteiro2 = gets.chomp.to_i;
puts "A soma dos seus numeros é #{inteiro1 + inteiro2}";
puts "A subtração dos seus numeros é #{inteiro1 - inteiro2}";
puts "A multiplicação dos seus numeros é #{inteiro1 * inteiro2}";
puts "A divisão dos seus numeros é #{inteiro1 / inteiro2}";


######EXERCICIO AULA 3######
#Utilizando as estruturas de iteração e condição, crie uma calculadora que ofereça ao usuário a opção de Multiplicar, Dividir, Adicionar ou Subtrair dois números. Não se esqueça de também permitir que o usuário feche o programa.

result = ''

loop do
    puts 'Digite uma opção'
    puts '1 - Somar dois numeros'
    puts '2 - Subtrair dois numeros'
    puts '3 - Multiplicar dois numeros'
    puts '4 - Dividir dois numeros'
    puts '0 - Sair'
    print 'Opção: '
    opcao = gets.chomp.to_i
    if opcao == 1
        puts 'Digite o primeiro numero'
        numero1 = gets.chomp.to_i
        puts 'Digite o segundo numero'
        numero2 = gets.chomp.to_i
        somar = numero1 + numero2
        puts "A soma dos seus dois numeros é #{somar}"
    elsif opcao == 2
        puts 'Digite o primeiro numero'
        numero1 = gets.chomp.to_i
        puts 'Digite o segundo numero'
        numero2 = gets.chomp.to_i
        diminuir = numero1 - numero2
        puts "A subtração dos seus dois numeros é #{diminuir}"
    elsif opcao == 3
        puts 'Digite o primeiro numero'
        numero1 = gets.chomp.to_i
        puts 'Digite o segundo numero'
        numero2 = gets.chomp.to_i
        multiplicar = numero1 * numero2
        puts "A multiplicação dos seus dois numeros é #{multiplicar}";
    elsif opcao == 4
        puts 'Digite o primeiro numero'
        numero1 = gets.chomp.to_i
        puts 'Digite o segundo numero'
        numero2 = gets.chomp.to_i
        dividir = numero1 / numero2
        puts "A divisão dos seus dois numeros é #{dividir}"
    else
        break if opcao == 0
    end
end


######EXERCICIO AULA 4######
#Utilizando uma collection do tipo Array, escreva um programa que receba 3 números e no final exiba o resultado de cada um deles elevado a segunda potência.

arraymap = [1, 2, 3]
arraymap.map! do |a|
    a **  2
end
#puts arraymap

#Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor. No final do programa para cada um desses elementos imprima a frase “Uma das chaves é **** e o seu valor é ****”

hash = {}
puts 'Digite sua primeira chave'
chave1 = gets.chomp
puts 'Digite seu primeiro valor'
valor1 = gets.chomp
puts 'Digite sua segunda chave'
chave2 = gets.chomp
puts 'Digite seu segundo valor'
valor2 = gets.chomp
puts 'Digite sua terceira chave'
chave3 = gets.chomp
puts 'Digite seu terceiro valor'
valor3 = gets.chomp

hash[chave1] = valor1
hash[chave2] = valor2
hash[chave3] = valor3

puts hash

puts "Uma das chaves é #{chave1} e o seu valor é #{valor1}"
puts "Uma das chaves é #{chave2} e o seu valor é #{valor2}"
puts "Uma das chaves é #{chave3} e o seu valor é #{valor3}"

#Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e valor do elemento resultante.
numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}
    valor_maior = 0
    result = []
    numbers.each do |key, value|
        if value > valor_maior
            valor_maior = value
            result = [key, value]
        end
end
puts "maior valor: #{result}"


######EXERCICIO AULA 4######
#Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def potenciaDeNumero (base, potencia)
    result = base ** potencia
    puts result
end

puts 'Digite um numero'
base = gets.chomp.to_i
puts 'Digite sua potencia'
potencia = gets.chomp.to_i

potenciaDeNumero(base, potencia)

#Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um número de cpf e em um método verifique se este número é válido.
#Link da documntação: https://github.com/fnando/cpf_cnpj

require "cpf_cnpj"

def verificaCPF number
    if CPF.valid?(number)
        puts 'CPF valido'
    else
        puts 'CPF invalido'
    end
end
puts 'Digite um CPF'
number = gets.chomp
result = verificaCPF(number)
resultEnd = result


######EXERCICIO AULA 5######
#crie um programa seguindo este paradigma com:
    #Classes
        #Esportista
            #Métodos: competir -> Imprime a mensagem “Participando de uma competição”
        #Jogador de futebol
            #Métodos: correr -> Imprime a mensagem “Correndo atrás da bola”
        #Maratonista
            #Métodos: correr-> Imprime a mensagem “Percorrendo o circuito”
#As classes JogadorDeFutebol e Maratonista devem herdar os comportamentos da classe Esportista.
#No final do programa execute os métodos competir e correr em objetos do tipo JogadorDeFutebol e Maratonista.

class Esportista
    def competir
        puts 'Participando de uma competição'
    end
end

class JogadorDeFutebol < Esportista
    def correr
        puts 'Correndo atrás da bola'
    end
end

class Maratonista < Esportista
    def correr
        puts 'Percorrendo o circuito'
    end
end

puts 'JOGADOR DE FUTEBOL'
jogadorDeFutebol = JogadorDeFutebol.new
jogadorDeFutebol.competir
jogadorDeFutebol.correr

puts ''

puts 'MARATONISTA'
maratonista = Maratonista.new
maratonista.competir
maratonista.correr


######EXERCICIO AULA 6######
#O exercicio está na pasta exercicioAula6 - Compras


######EXERCICIO AULA 7######
#O ruby oferece um método chamado capitalize para tornar a primeira letra de uma string maiúscula.
#Sabendo disso crie uma lambda que recebe um nome como parâmetro e o imprime com a primeira letra maiúscula. Esta lambda deverá ser salva dentro de uma variável que será passada como argumento de um método chamado capitalize_name.
#Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em cada uma delas um nome diferente.  

def capitalize_name (letraMaiuscula)
    puts letraMaiuscula.call('lia')
    puts letraMaiuscula.call('maria')
end

letraMaiuscula = -> (nome) {nome.capitalize}

capitalize_name(letraMaiuscula)

#Crie um módulo chamado Person com as classes Juridic e Physical.
#Ao executar a instrução: Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
#Seu código deverá retornar:
    #Pessoa Juridica adicionada
    #nome: M.C. Investimentos
    #cnpj: 4241.123/0001
#E com a instrução: Person::Physical.new('José Almeida', '425.123.123-123').add
#Deverá retortornar:
    #Pessoa Fisica adicionada
    #nome: José Almeida
    #cpf: 425.123.123-123

    module Person
        class Juridic
            def initialize (name, cnpj)
                @name = name
                @cnpj = cnpj
            end
            def add
                puts 'Pessoa juridica adicionada'
                puts "nome: #{@name}"
                puts "cnpj: #{@cnpj}"
            end
        end
        class Physical
            def initialize (name, cpf)
                @name = name
                @cpf = cpf
            end
            def add
                puts 'Pessoa fisica adicionada'
                puts "nome: #{@name}"
                puts "cnpj: #{@cpf}"
            end
        end
    end
    
    Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
    puts ''
    Person::Physical.new('José Almeida', '425.123.123-123').add