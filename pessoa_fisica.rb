require_relative 'pessoa'

class PessoaFisica < Pessoa

  attr_accessor :cpf

  def initialize(nome, sobrenome, cpf)

    @nome = nome

    @sobrenome = sobrenome

    @cpf = cpf

  end

  def imprime_cpf 

    "Seu cpf é #{@cpf}" 

  end

end