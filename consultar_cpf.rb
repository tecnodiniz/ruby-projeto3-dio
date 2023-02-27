# Um programa que consulta se o cpf é valido

#Importar a lib
require 'cpf_cnpj'

#Usuário digita o cpf
puts ("Digite seu cpf para validação:")
cpf = gets.chomp.to_i()


def consultar(cpf)

#Verificar se é válido
if CPF.valid?(cpf)
  puts "CPF válido"
else
  puts "CPF inválido"
end

puts "Deseja verificar outro cpf? 1-Sim 2-Não"

n = gets.chomp.to_i()
case n
when 1
  cpf = gets.chomp.to_i()
  consultar(cpf)
when 2
  puts "Encerrando programa..."
  
else
  puts "Opção inválida"
end
end

consultar(cpf)

