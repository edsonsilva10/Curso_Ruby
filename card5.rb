
require_relative 'card'

#cards = []
CARDS_FILE = 'cards.txt'

INSERT_CARD = 1
SHOW_CARDS = 2
FIND_CARDS = 3
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

def recebe_card
  puts "Digite um card em Português"
  palavra_pt = gets.chomp 
  puts "Digite um card em Inglês"
  palavra_in = gets.chomp 
  card = Card.new(palavra_pt, palavra_in)
  system("clear")
  puts "Você inseriu #{card.to_s} "
  escreve_card card
end

def escreve_card(card)

  File.open(CARDS_FILE, 'a+') do |file|

    file << card.to_s + "\n"

  end

end

def mostra_cards
  File.open(CARDS_FILE).readlines.each do |descr_card|    
  puts descr_card    
  end
  puts
end

def busca
  puts "Digite um card efetuar a busca"
  busca = gets.chomp   
  
  selected_cards = File.open(CARDS_FILE).readlines.select do |card|
  card.include? busca
  end  
    puts "Qtde encontrada: #{selected_cards.count}"   
    #mostra_cards(select_cards)    
    puts selected_cards
end

def limpa_tela

  system('clear')

end

opcao = nil

while opcao != END_SYSTEM  
  opcao = menu
  if opcao == INSERT_CARD
    card = recebe_card    
  elsif opcao == SHOW_CARDS
    mostra_cards
  elsif opcao == FIND_CARDS    
    busca
  else 
    puts "Volte sempre"
  end

end





