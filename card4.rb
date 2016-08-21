
require_relative 'card'

cards = []



INSERT_CARD = 1
HOW_CARDS = 2

END_SYSTEM = 4

def menu 
  puts "Digite a opção desejada"
  puts "Deseja inserir um card?"
  puts "[#{INSERT_CARD}] Inserir um novo Card"
  puts "[#{SHOW_CARDS}] Exibir todos os Cards"
  puts "[#{FIND_CARDS}] Buscar um Card"
  puts "[#{END_SYSTEM}] Sair"  
  gets.to_i   
end

def inserir_card
  puts "Digite um card em Português"
  palavra_pt = gets.chomp 
  puts "Digite um card em Inglês"
  palavra_in = gets.chomp 
  
  card = Card.new(palavra_pt, palavra_in)
  system("clear")
  #puts "Você inseriu #{card.portugues} -> #{card.ingles} "
  #puts "Você inseriu #{card.to_s} "
  puts "Você inseriu #{card} "
  #{ portugues:palavra_pt, ingles:palavra_in } # HASH       
  card
end

def mostra_cards(cards)
  cards.readlines do |descr_card|
    #puts "#{descr_card[:portugues]} -> #{descr_card[:ingles]}"
  puts descr_card
    #puts "Cards inseridos #{card.portugues} -> #{card.ingles} "
  end
end

def busca(cards)
  puts "Digite um card efetuar a busca"
  busca = gets.chomp   
  select_cards = cards.select do |card|
    #card.ingles == busca || card.portugues == busca
    # fazer um upercase e verificar se não é nil antes de fazer o trecho abaixo
    # card.portugues.include?(busca) || card.ingles.include?(busca)
  card.include? busca 

  end  
    puts "Qtde encontrada: #{select_cards.count}"
    mostra_cards(select_cards)    
end

opcao = nil

while opcao != END_SYSTEM  
  opcao = menu
  if opcao == INSERT_CARD
    card = inserir_card
    cards << card 
  elsif opcao == SHOW_CARDS
    mostra_cards(cards)
  elsif opcao == FIND_CARDS
    #puts "Em breve disponível... Estamos trabalhando nessa opção"
    busca(cards)

  #elsif opcao == END_SYSTEM
  #  puts "Volte sempre"
    #break    
  else 
    puts "Volte sempre"
  end

end





