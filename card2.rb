#.chomp  o chomp não mantem na mesma linha. Ou seja na hora de concatenar ele é muito util 


puts"Digite a opção desejada"
puts"[1] Inserir uma expressão [2] Sair "
opcao = gets.to_i 
cards = []
while opcao == 1 

	if opcao == 1 
		puts "Digite uma palavra em Português"
		palavra_pt = gets.chomp 
		puts "Digite uma palavra em Inglês"
		palavra_in = gets.chomp 
		card = "#{palavra_pt} = #{palavra_in}"  
		puts card
		cards << card

	end
 puts"Digite a opção desejada"
 puts"[1] Inserir uma expressão [2] Sair "
 opcao = gets.to_i 
end

puts cards

