#1. Escreva se as seguintes expressões retornam true ou false. Em seguida, execute as expressões para ver os resultados.
(32 * 4) >= 129 #false
false != !true #false
true == 4 #true
false == (847 == '847') #true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #true

puts ""

#2. Escreva um método que receba uma string como argumento. O método deve retornar uma nova versão em letras maiúsculas da string, somente se a string tiver mais de 10 caracteres. Exemplo: troque "hello world" por "HELLO WORLD". (Dica: a classe String do Ruby tem alguns métodos que podem ser úteis. Verifique a documentação do Ruby !)
def tudo_maiusculo(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

p tudo_maiusculo("hello world")

puts ""

#3. Escreva um programa que receba um número do usuário entre 0 e 100 e informe se o número está entre 0 e 50, 51 e 100 ou acima de 100.
puts "Escreva um numero de 0 a 100"
num = gets.chomp.to_i

case num
when num < 0
  puts "Precisa escrever um numero de 0 a 100"
when 0..50
  puts "O numero #{num} está entre 0 e 50"
when 51..100
  puts "O numero #{num} está entre 51 e 100"
when num > 100
  puts "Precisa escrever um numero de 0 a 100"
end

puts ""

#4. O que cada bloco de código abaixo imprimirá na tela? Escreva sua resposta em um pedaço de papel ou em um editor de texto e execute cada bloco de código para ver se acertou.
# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE") #FALSE
# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3) #Did you get it right?
  puts "Did you get it right?"
else
  puts "Did you?"
end
# Snippet 3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y) #Alright now!
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!" #ALRIGHT NOW!
else
  puts "Alrighty!"
end

puts ""

=begin
5. Quando você executa o seguinte código...
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)
Você recebe a seguinte mensagem de erro..
"exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end"
Por que você recebe esse erro e como corrigi-lo?
=end
#R: Pois está faltando um end no final do bloco da condição
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

puts ""

#6. Anote se as expressões a seguir retornam true ou false ou geram um erro. Em seguida, execute as expressões para ver os resultados.
(32 * 4) >= "129" #error (nao pode compartar string com inteiro)
847 == '847' #false
'847' < '846' #false
'847' > '846' #true
'847' > '8478' #false
.
'847' < '8478' #true
