

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
		card = {portugues:palavra_pt, ingles:palavra_in} # HASH 
		cards << card

	end
 puts"Digite a opção desejada"
 puts"[1] Inserir uma expressão [2] Sair "
 opcao = gets.to_i 
end

cards.each do |descr_card|

puts "#{descr_card[:portugues]} -> #{descr_card[:ingles]}"

end

