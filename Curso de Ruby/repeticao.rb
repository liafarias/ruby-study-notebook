##INTERAÇÃO/REPETIÇÃO
#FOR
diasDaSemana = ['seg', 'ter', 'qua', 'qui', 'sex', 'sab', 'dom'];
for dia in diasDaSemana
    puts dia
end
#WHILE
x =  0
while x <= 5
    puts x
    x += 1
end
#LOOP (WHILE/DO)
contador = 1
loop do
    puts contador
    break if contador == 10
    contador += 1
end
#TIMES
4.times do
    puts 'estou imprimindo 4 vezes'
end