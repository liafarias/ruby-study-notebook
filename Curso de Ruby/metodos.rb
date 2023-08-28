##METODOS -> forma de organizar funções específicas de um programa.  Caso necessário permite a reutilização de código, ou seja, evita escrever o mesmo código diversas vezes.
def hello name #apenas um parametro não precisa usar parentese.
    puts "Olá #{name}"
end

#hello "Lia"

def talk (nome, sobrenome)
    puts "Olá #{nome} #{sobrenome}, como você está?"
end

#talk('Lia', 'Farias')

#usando parametro padrão -> Definindo um valor padrão ao parâmetro, ele torna-se opcional.
def sinal (color = 'vermelho')
    puts "O sinal está #{color}"
end

#sinal
#sobrescrevendo o parametro padrão
color = 'verde' 
#sinal(color)
#sinal('amarelo')

#usando retorno -> retorno de um método ruby é sempre o resultado de sua última instrução.
def numeros
    1
    2
    3 #retorna o 3 pois é o ultimo valor
end

puts numeros

#OBS: quando existe um return dentro do bloco de codigo o codigo será executado somente até o return.
def numeros1
    1
    return 2 #retorna o 3 pois o return está aqui
    3
end

puts numeros1