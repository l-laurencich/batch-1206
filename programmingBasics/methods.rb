require 'date'

def tomorrow
  tomorrow = Date.today + 1
  return tomorrow.strftime("%^A %B %d")
end

# puts tomorrow
# #something happening here
# puts "..."
# puts tomorrow

def full_name(first, last)
  full_name = "#{first.capitalize} #{last.capitalize}"
  return full_name
end

puts full_name("aLex", "jAMEs")
puts full_name("boRis", "kneZevic")



def tall?(height)
  if height > 180
    return true
  else
    return false
  end
end

puts tall?(150)
puts tall?(195)
puts tall?(180)