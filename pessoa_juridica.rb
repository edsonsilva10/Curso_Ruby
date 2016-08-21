require_relative 'pessoa'

class PessoaJuridica < Pessoa

  attr_accessor :cnpj

  def initialize(nome, sobrenome, cnpj)

    @nome = nome

    @sobrenome = sobrenome  

    @cnpj = cnpj

  end

  def imprime_cnpj 

    "Seu cnpj é #{@cnpj}" 

  end

end