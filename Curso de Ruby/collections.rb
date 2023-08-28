##COLLECTIONS -> representa um conjunto de dados semelhantes em uma única unidade.


##ARRAY
array = []; #Criando array
array.push(1,2,3,4) #Adiciona 1 ou mais elementos no final do array
array.insert(-1, 5) #Adiciona itens no array especificando a posição pelo primeiro parametro
array.first #Recupera o primeiro elemento do array
array.last #Recupera o ultimo elemento do array
array.count #Tamanho do array
array.length #Tamanho do array
array.empty? #Verificar se o array está vazio -> restorna true ou false
array.include?('item') #Verifica se o item passado como parametro existe no array -> retorna true ou false
#array.delete_at('indice') #Remover um item do array pelo indice dele
array.pop #Exclui o ultimo item do array
array.shift #Exclui o primeiro item do array


##HASH
hash = Hash.new; #Criando um hash vazio
hash[:valor1] = 1; #Adicionando valores em um hash
hash.keys #Verificando todas as chaves do hash
hash.values #Verifica todos os valores do hash
hash.delete(:valor1) #Deletar um elemento pela chave-valor
hash.size #Verificar a quantidade de elementos do hash
hash.empty? #Verificar se o hash está vazio -> retorna true ou false


##INTERAÇÃO COM COLLECTIONS
#EACH ->
names = ['Joãozinho', 'Manoel', 'Juca'];
name = 'Leonardo';

names.each do |name|
    #puts name
end
#puts name

aulas = {aula1: 'liberado', aula2: 'liberada', aula3: 'em breve'}

aulas.each do |key, value|
    #puts "#{key} #{value}"
end

#MAP ->
array = [1, 2, 3, 4]
 
new_array = array.map do |a| 
    a * 2
end
#puts "\n Array Original"
#puts " #{array}"
 
#puts "\n Novo Array"
#puts " #{new_array}"
 
#MAP! -> Força o array original a mudar o valor
array.map! do |a| 
 a * 2
end
 
#puts "\n Array Original"
#puts " #{array}"

#SELECT ->
array = [1, 2, 3, 4, 5, 6]

selection = array.select do |a|
    a >= 4
end

#puts selection

hash = {0 => 'zero', 1 => 'um', 2 => 'dois'}

selection_key = hash.select do |key, value|
    key > 0
end

#puts selection_key