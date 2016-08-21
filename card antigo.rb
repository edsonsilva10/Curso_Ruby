class Card 
 attr_reader :portugues, :ingles #apenas lê. 

  def initialize(portugues, ingles)
    @portugues = portugues
    @ingles = ingles
  end

  def to_s
    "#{portugues} -> #{ingles}"    
  end

  def include?(busca)
     portugues.include?(busca) || ingles.include?(busca) 
  end

#  def portugues  # Ex gets e sets do java
#    @portugues
#  end

#  def ingles
#    @ingles
#  end

end

