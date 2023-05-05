require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"

#FIND ONE
# task = Task.find(6)
# puts "These are the available tasks"
# puts "------------------"
# puts "Task: #{task.title} Description: #{task.description}"
# puts "------------------"

#CREATE
task = Task.new(title: "Play the Pub Quiz", description: "I will win because I know the answers")
task.save

# #UPDATE
# task = Task.find(6)
# puts "#{task.done == 1 ? "Task is done" : "Task still open"}"
# task.done = false
# task.save
# task = Task.find(6)
# puts "#{task.done == 1 ? "Task is done" : "Task still open"}"


# #FIND ALL
# Task.all.each do |task|
#   puts "Task: #{task.title} Description: #{task.description}"
# end

# #DELETE
task = Task.find(11)
task.destroy
task = Task.find(11)
puts task