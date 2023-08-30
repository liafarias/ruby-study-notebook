#1.Escreva um programa que verifique se a sequência de caracteres “lab” existe nas strings a seguir. Se existir, imprima a palavra.
def existe_a_sequencia(palavra)
  if palavra =~/lab/
    puts palavra
  else
    puts 'não existe a palavra'
  end
end
existe_a_sequencia("laboratório")
existe_a_sequencia("experimentar")
existe_a_sequencia("Labirinto das Panelas")
existe_a_sequencia("elaborar")
existe_a_sequencia("Urso polar")

puts ' '

#2.O que o programa a seguir imprimirá na tela? O que isso retornará?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }
#R: Não irá imprimir nada pois o bloco nunca é ativado com o metodo .call (que não existe). Retorna um objeto Proc.

puts ' '

#3.O que é tratamento de exceções e que problema ele resolve?
#R: É uma estrutura usada para lidar com a possibilidade de ocorrência de um erro em um programa.Serve para tratar erros de maneira gerenciavel e previsivel, alterando o fluxo de controle sem sair totalmente do programa.

puts ' '

#4.Modifique o código do exercício 2 para que o bloco seja executado corretamente.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

puts ' '

#5.Por que o código a seguir ...
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
#Dê-nos o seguinte erro quando o executarmos?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

#R: Pois para passar um block como um parametro é necessario usar o &block não apenas block