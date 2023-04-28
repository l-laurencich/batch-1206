require_relative "lion"
require_relative "meercat"
require_relative "warthog"

animals = []

simba = Lion.new("Simba")
nala = Lion.new("Nala")
timon = Meercat.new("Timon")
pumbaa = Warthog.new("Pumbaa")

animals << simba
animals << nala
animals << timon
animals << pumbaa

animals.each do |animal|
  puts animal.eat("kebab")
end