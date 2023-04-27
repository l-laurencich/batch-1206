require_relative "./building.rb"

class Skyscraper < Building
  def initialize(name, width, length, height)
    super(name, width, length)
    @height = height
  end

 

  def owner_of_skyscraper
    if @height > 500
      "this #{capitalized_name} is a skyscraper for Spider Man"
    else 
      "this #{self.capitalized_name} is a skyscraper for beginners"
    end
  end
end



super_tall_skyscraper = Skyscraper.new("Super Tall", 40, 20, 800)

p super_tall_skyscraper.name
p super_tall_skyscraper.width
p super_tall_skyscraper.length
p super_tall_skyscraper.floor_area
p super_tall_skyscraper.owner_of_skyscraper

