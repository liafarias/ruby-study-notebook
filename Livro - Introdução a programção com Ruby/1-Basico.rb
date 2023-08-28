# 1. Adicione duas strings juntas que, quando concatenadas, retorne seu nome e sobrenome como seu nome completo em uma string.
nome = "Lia"
sobrenome = "Farias"
puts "#{nome} #{sobrenome}"
# Por exemplo, se seu nome é John Doe, pense em como você pode juntar "John" e "Doe" para obter "John Doe".

puts ""

# 2. Use o operador de módulo, divisão ou uma combinação de ambos para pegar um número de 4 dígitos e encontrar o dígito na:
numero = 4567 
# 1) casa dos milhares
puts numero / 1000
# 2) casa das centenas
puts numero % 1000 / 100  
# 3) casa das dezenas 
puts numero % 1000 % 100/ 10
# 4) casa das unidades
puts numero % 1000 % 100 % 10 / 1

puts ""

# 3. Escreva um programa que usa um hash para armazenar uma lista de títulos de filmes com o ano em que foram lançados. Em seguida, use o comando puts para fazer seu programa imprimir o ano de cada filme na tela. A saída para o seu programa deve ser algo como isto.

filmes = {
  Um_Amor_para_Recordar: 2002,
  Diário_de_uma_Paixão: 2004,
  Querido_John: 2010,
  Um_Dia: 2011
}
puts filmes[:Um_Amor_para_Recordar]
puts filmes[:Diário_de_uma_Paixão]
puts filmes[:Querido_John]
puts filmes[:Um_Dia]

puts ""

# 4. Use as datas do exemplo anterior e armazene-as em uma matriz. Em seguida, faça com que a saída do seu programa seja a mesma do exercício 3.
datas= [2002, 2004, 2010, 2011]
puts datas[0]
puts datas[1]
puts datas[2]
puts datas[3]

puts ""

# 5. Escreva um programa que imprima o fatorial dos números 5, 6, 7 e 8.

fatorial_5 = 5 * 4 * 3 * 2 * 1
puts "5! = 5 x 4 x 3 x 2 x 1 = #{fatorial_5}"
fatorial_6 = 6 * 5 * 4 * 3 * 2 * 1
puts "6! = 6 x 5 x 4 x 3 x 2 x 1 = #{fatorial_6}"
fatorial_7 = 7 * 6 * 5 * 4 * 3 * 2 * 1
puts "7! = 7 x 6 x 5 x 4 x 3 x 2 x 1 = #{fatorial_7}"
fatorial_8 = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
puts "8! = 8 x 7 x 6 x 5 x 4 x 3 x 2 x 1 = #{fatorial_8}"

puts ""

# 6. Escreva um programa que calcule os quadrados de 3 números flutuantes de sua escolha e exiba o resultado na tela.

puts "3.5² = #{3.5*3.5}"
puts "5.6² = #{5.6*5.6}"
puts "8.9² = #{8.9*8.9}"

puts ""

# 7. O que a seguinte mensagem de erro informa?

"SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'"

  #Resposta: Que existe um erro de sintese da forma como o codigo está escrito, estamos passando um ")" e ele espera um "}"