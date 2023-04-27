require_relative "./building.rb"

class House < Building

  def self.price_per_sqm(city)
    case city
    when "Munich" then 9000
    when "Berlin" then 5000
    else "No data for #{city}"
    end
  end
end


white_house = House.new("White House", 40, 50)

p white_house.name
p white_house.width
p white_house.length
p white_house.floor_area
p House.price_per_sqm("Paris")




