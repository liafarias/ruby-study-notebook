#1. Escreva um programa que imprima uma mensagem de saudação. Este programa deve conter um método chamado greetingque recebe name como parâmetro e retorna uma string.

def greetingque(name)
  "Bem vindo, #{name}"
end

greetingque('Lia')

puts ""

#2. O que as expressões a seguir avaliam? Ou seja, qual valor cada expressão retorna?
x = 2 #2
puts x = 2 #nil
p name = "Joe" #Joe
four = "four" #four
print something = "nothing" #nil

puts ""

#3. Escreva um programa que inclua um método chamado multiplyque receba dois argumentos e retorne o produto dos dois números.

def multiplyque(a,b)
  return a * b
end

multiplyque(4,5)

puts ""

#4. O que o código a seguir imprimirá na tela?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

#R: Nada, pois nada é executado depois do return então o puts não será chamado para exibir na tela.

puts ""

#5. Edite a definição do método no exercício #4 para que imprima palavras na tela. 2) O que ele retorna agora?

def scream(words)
  words = words + "!!!!"
  puts words
  return words
end

scream("Yippeee")

#R: ira imprimir e retornar "Yippeee!!!!" 

puts ""

#6. O que a seguinte mensagem de erro informa?
"ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'"

#R: Que não está sendo passado o numero de argumentos corretos na chamada do metodo

puts ""