#1. O que o método each, no programa a seguir, retorna após terminar a execução?
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
#R: Vai retornar [1, 2, 3, 4, 5], o array original

puts ""

#2. Escreva um loop while que receba informações do usuário, execute uma ação e só pare quando o usuário digitar "STOP". Cada loop pode obter informações do usuário.
while resposta != 'STOP' do
  puts "Você deseja continuar? Escreva STOP para parar."
  resposta = gets.chomp
  if resposta == 'STOP'
    break
  end
end

puts ""

#3. Escreva um método que faz contagem regressiva até zero usando recursão.
def contagem_regressiva(numero)
  puts numero
  if numero > 0
    contagem_regressiva(numero -= 1)
  end
end
