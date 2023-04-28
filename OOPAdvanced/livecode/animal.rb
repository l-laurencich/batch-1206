class Animal 
attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.phyla
    ["Phylum Coelenterata", "Phylum Platyhelminthes","Phylum Nematoda", "Phylum Annelida"]
  end
  def eat(food) 
    "#{name} eats a #{food}."
  end
end

