puts"Digite a opção desejada"
puts"[1] Inserir uma expressão [2] Sair "
opcao = gets.to_i 

if opcao == 1 
	puts "Digite uma palavra em Português"
	palavra_pt = gets
	puts "Digite uma palavra em Inglês"
	palavra_in = gets
	puts "Em Português: #{palavra_pt}"  
	puts "Em Inglês: #{palavra_in}"
	
else
	puts "tchau"

end





