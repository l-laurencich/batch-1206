puts "-----------------------------"
puts "welcome to the price is right"
puts "-----------------------------"

min = 1
max = 1000000

price = rand(min..max)
guess = 0
count = 0

while guess != price
  puts "Guess the number!"
  guess = (min+max)/2
  if guess < price
    puts "Your guess is too low!"
    min = guess
  elsif guess > price
    puts "Your guess is too high!"
    max = guess
  end
  count += 1
end

puts "You're right! It took you #{count} guesses!"