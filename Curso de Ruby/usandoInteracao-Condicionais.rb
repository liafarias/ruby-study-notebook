##USANDO INTERAÇÃI E CONDICIONAIS
result = ''
loop do
    puts result
    puts 'Seleciona uma das sequintes opções'
    puts '1 - Calcular sua media'
    puts '2 - Calcular sua idade'
    puts '0 - sair'
    print 'Opção: '
    opcao = gets.chomp.to_i;

    if opcao == 1
        puts 'Digite sua primeira nota'
        nota1 = gets.chomp.to_i
        puts 'Digite sua segunda nota'
        nota2 = gets.chomp.to_i
        calcularNota = (nota1 + nota2) / 2
        puts "Sua media é #{calcularNota}"
    elsif opcao == 2
        puts 'Digite o ano que você nasceu'
        nascimento = gets.chomp.to_i
        puts 'Digite o ano em que você está agora'
        ano = gets.chomp.to_i
        calcularIdade = ano - nascimento
        puts "Já que você nasceu em #{nascimento} e você está em #{ano} sua idade é #{calcularIdade}"
    elsif opcao == 0
        break if opcao == 0
    else
        puts 'Opção invalida'
    end
end