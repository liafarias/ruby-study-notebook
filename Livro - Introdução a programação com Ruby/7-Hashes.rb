#1. Dado um hash de membros da família, com chaves como título e um array de nomes como valores, use o método select interno do Ruby para reunir apenas os nomes dos irmãos em um novo array.
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}
family.select{ |key, value| key == :brothers || key == :sisters }
irmaos = family.select do |key, value| 
  key == :brothers || key == :sisters
end
irmaos.values.flatten

puts ""

#2. Veja o método merge do Ruby . Observe que ele tem duas versões. Qual é a diferença entre mergee merge!? Escreva um programa que use ambos e ilustre as diferenças.
#R: Metodo merge cria um novo hash com as informações megiadas, mas não altera o hash anterior.
ages = { 
  sisters_age: [12, 23, 10],
  brothers_age: [15, 20, 5]
}
p family.merge(ages)
p family
#R: Já o metodo merge! altera o hash orignal para um merge mesclado.
p family.merge!(ages)
p family

puts ""

#3. Usando alguns dos métodos Hash integrados do Ruby , escreva um programa que percorre um hash e imprime todas as chaves. Em seguida, escreva um programa que faça a mesma coisa, porém para imprimir os valores. Finalmente, escreva um programa que imprima ambos.
family.each_key do |key|
  p key
end
family.each_value do |value|
  p value
end
family.each do |key|
  p key
end

puts ""

#4. Dada a seguinte expressão, como você acessaria o nome da pessoa?
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

puts ""

#5. Que método você poderia usar para descobrir se um Hash contém um valor específico? Escreva um programa que verifique se o valor está dentro do hash.
person.fetch(:hobbies)
if person.value?(:hobbies) || person.key?(:hobbies)
  "Sim"
else
  "Não"
end
  

puts ""

#6. Dado o seguinte código...
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
#Qual é a diferença entre os dois hashes que foram criados?
#R: O my_hash é o novo jeito de escrever hash em ruby, enquanto my_hash2 é o jeito mais antigo (ainda é utilizado quando você escreve chaves em algum tipo diferente de :simbolo)

puts ""

=begin
  7. Se você vir esse erro, qual você suspeita ser o problema mais provável?
      NoMethodError: undefined method `keys' for Array
    A. Faltam chaves em uma variável de array.

    B. Não há nenhum método chamado keys para objetos Array.

    C. keys é um objeto Array, mas ainda não foi definido.

    D. Existe um array de strings, e estamos tentando retirar o string keys do array, mas ele não existe. 
  R: B
=end

puts ""

