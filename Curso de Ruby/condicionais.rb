##CONDICIONAIS 
#IF/ELSE IF/ELSE
dia = 'sabado';
chuvendo = false
if dia == 'sabado'
    puts 'vou a praia'
elsif dia == 'sabado' || chuvendo == true
    puts 'não vou a praia'
else
    puts 'não vou a praia'
end
#UNLESS
chuvendo = true;
unless chuvendo == true
    puts 'não vou a praia'
else
    puts 'vou a praia'
end
#CASE
puts 'Digite a avaliação do filme'
    avaliacao = gets.chomp.to_i;
    case avaliacao
    when 1..2
        puts 'ruim'
    when 3..4
        puts 'bom'
    when 5
        puts 'exelente'
    else
        puts 'avaliação invalida'
    end