class Butler 
  attr_reader :castle
  def initialize(castle)
    @castle = castle
  end

  def clean_castle 
    "I have cleaned #{@castle.name}. It took me 4 hours because it is #{@castle.floor_area} sqm big"
  end
end

