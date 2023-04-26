class Car
  attr_reader :brand
  # attr_reader + attr_writer = attr_accessor
  attr_accessor :color

  def initialize(color, brand)
    @engine_started = false
    @color = color
    @brand = brand
  end

  def engine_started?
    @engine_started
  end

  def color=(new_color)
    @color = new_color
  end
  # ==

  # def color
  #   @color
  # end
  
  # def brand 
  #   @brand
  # end

  def start_engine!
    puts "is this really your car? y/n"
    answer = gets.chomp  
      if answer == "y"
        ignite_sparks
        fuel_pump_pumps
        @engine_started = true
      end
  end

  private 

  def ignite_sparks
    puts "vrinn igniting sparks"
  end

  def fuel_pump_pumps 
    puts "pump pump pumping fuel"
  end
end



