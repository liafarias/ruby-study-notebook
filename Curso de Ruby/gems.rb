##GEMS -> pacote que oferece funcionalidades a fim de resolver uma necessidade específica de um programa Ruby. Pense como o conceito de biblioteca em outras linguagens de programação.
#Instalando uma gem (no terminal -> wsl)
gem install gem_name
#Usando uma gem (no arquivo -> vs)
require 'gem_name'
#Deletando uma gem (no terminal -> wsl)
gem uninstall gem_name
#Listando as gems instaladas na maquina (no terminal -> wsl)
gem list
#Instalando o Bundler -> Instalar varias gem de uma vez
gem install bundler
#-> Criar um arquivo Gemfile e nele digitar:
source 'https://rubygems.org'
gem 'gem_name'
#Instalar gem usando
bundle install
#Onde achar gems
'https://rubygems.org'