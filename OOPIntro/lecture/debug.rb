# require "pry-byebug"

def capitalize(first_name, last_name)
  first_name.capitalize
  # binding.pry
  last_name.capitalize!
  # binding.pry
  return "#{first_name} #{last_name}"
end

# binding.pry

puts capitalize("lucas", "maximiliano")