require_relative "./building.rb"
require_relative "./butler.rb"

class Castle < Building
  attr_accessor :moat
  attr_reader :butler

  def initialize(name, width, length)
    super(name, width, length)
    @butler = Butler.new(self)
  end

  def has_a_moat?
    @moat == true
  end

  def floor_area
    super + 300
  end

  def self.categories 
    ["Norman", "Antique", "Greek"]
  end

end



magnificent_castle = Castle.new("Magnificent Castle", 400, 200)

p magnificent_castle.name
# p magnificent_castle.width
# p magnificent_castle.length
p magnificent_castle.floor_area
# p magnificent_castle.has_a_moat?
# p "giving the castle a moat now"
# magnificent_castle.moat = true
# p magnificent_castle.has_a_moat? #instance methods are called on instances
p Castle.categories #class methods are called on classes
p magnificent_castle.butler.clean_castle




