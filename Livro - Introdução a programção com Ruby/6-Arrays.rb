#1. Abaixo, fornecemos um array e um número. Escreva um programa que verifique se o número aparece no array.
arr = [1, 3, 5, 7, 9, 11]
number = 3
arr.include? number

puts ""

#2. O que os seguintes programas retornarão? Qual o valor de arr em cada um?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
#R: Retornará 1. Valor de arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 

puts "-------------------------"

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
#R: Retornará [1, 2, 3]. Valor de arr = [["b"], ["a", [1, 2, 3]]] 

puts ""

#3.Como você retorna a palavra "exemplo" da matriz a seguir?
arr = [["test", "hello", "world"],["example", "mem"]]
p arr[1][0]

puts ""

#4. O que cada método retorna no exemplo a seguir?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)
#R:Retorna 3
2. arr.index[5]
#R:NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
#   from (irb):81
#   from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
3. arr[5]
#Retorna 8

puts ""

#5. Qual é o valor de a, b e c no seguinte programa?
string = "Welcome to America!"
a = string[6] #e
b = string[11] #A
c = string[19] #Não tem (nil)

puts ""

=begin
6. Você executa o seguinte código...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

...e obter a seguinte mensagem de erro:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

Qual é o problema e como pode ser corrigido?

R:Está passando uma string em vez do index do array, o index sempre é um numero inteiro
=end
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

puts ""

#7. Use o método each_with_index para percorrer um array de sua criação que imprime cada índice e valor do array.
array = ['bob', 'joe', 'susan', 'margaret']
array.each_with_index do |names, i|
  p "#{i + 1}. #{names}"
end

puts ""

#8. Escreva um programa que itere sobre um array e construa um novo array que seja o resultado do incremento de cada valor no array original por um valor de 2. Você deve ter dois arrays no final deste programa, o array original e o novo array você criou. Imprima ambas as matrizes na tela usando o método p em vez de puts.

array_original = [5, 6, 7, 8, 9, 10]
array_incrementado = []
array_original.map do |i|
  array_incrementado << i+ 2
end

p array_original
p array_incrementado