# 1. Escreva um programa que peça ao usuário para digitar seu nome e, em seguida, imprima uma mensagem de saudação com seu nome incluído.

puts "Digite seu nome:"
usuario = gets.chomp
puts "Seja bem vindo, #{usuario}!"

puts ""

# 2. Escreva um programa que pergunte a um usuário quantos anos ele tem e diga quantos anos ele terá daqui a 10, 20, 30 e 40 anos. Abaixo está a saída para alguém de 20 anos.

# saída de age.rb para alguém de 20 anos
# Quantos anos você tem?
# Em 10 anos você será:
# 30
# Em 20 anos você será:
# 40
# Em 30 anos você será:
# 50
# Em 40 anos você será:
# 60

puts "Quantos anos você tem?"
idade = (gets).to_i

puts "Em 10 anos você terá: #{idade + 10}"
puts "Em 20 anos você terá: #{idade + 20}"
puts "Em 30 anos você terá: #{idade + 30}"
puts "Em 40 anos você terá: #{idade + 40}"
puts "Em 50 anos você terá: #{idade + 50}"
puts "Em 60 anos você terá: #{idade + 60}"



puts ""

# 3. Adicione outra seção que imprima o nome do usuário 10 vezes. Você deve fazer isso sem escrever explicitamente o método puts 10 vezes seguidas. Dica: você pode usar o timesmétodo para fazer algo repetidamente.

10.times {puts usuario}

puts ""

# 4. Modifique novamente para que primeiro pergunte ao usuário o primeiro nome, salve-o em uma variável e, em seguida, faça o mesmo para o sobrenome. Em seguida, exibe o nome completo de uma vez.

puts "Qual seu primeiro nome?"
primeiro_nome = gets.chomp
puts "Qual seu sobrenome?"
sobrenome = gets.chomp
puts "#{primeiro_nome} #{sobrenome}"

puts ""

#5. Veja os seguintes programas...
    # x = 0
    # 3.times do
    #   x += 1
    # end
    # puts x
    #R: Imprime 3 na tela

    # y = 0
    # 3.times do
    #   y += 1
    #   x = y
    # end
    # puts x
    #R: Dá um erro, pois não é possivel acessar a variavel x, ja que ela está dentro do escopo de um bloco.