class Building 
  attr_reader :name, :width, :length
  def initialize(name, width, length)
    @name = name
    @width = width
    @length = length #@length is an instance variable
  end

  def floor_area
    @width * @length
  end
  
end



random_building = Building.new("Pretty boring building", 400, 200)

# p random_building.name
# p random_building.width
# p random_building.length
# p random_building.floor_area


