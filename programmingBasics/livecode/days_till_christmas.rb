require 'date'

def days_until_christmas(date)
  christmas = Date.new(date.year, 12, 25)
  christmas = christmas.next_year if date > christmas
  days = christmas - date
  return days.to_i
end


puts days_until_christmas(Date.new(2023, 12, 25))
puts days_until_christmas(Date.new(2024, 12, 01))
puts days_until_christmas(Date.new(1999, 12, 31))