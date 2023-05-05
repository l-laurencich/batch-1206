require "pry-byebug"

class Task
  attr_reader :title, :description, :id
  attr_accessor :done

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @description = attributes[:description]
    @done = attributes[:done] || false
  end

  def self.find(id)
    query = "SELECT * FROM tasks WHERE id = ?"
    result = DB.execute(query, id).first
    if result.nil?
      "not found"
    else 
      build_task(result)
    end 
  end

  def save
    if @id.nil?
      #create
      query = "INSERT INTO tasks (title, description, done) VALUES (?, ?, ?)"
      DB.execute(query, @title, @description, @done ? 1 : 0)
      @id = DB.last_insert_row_id
    else
      #update
      query = "UPDATE tasks SET title = ?, description = ?, done = ? WHERE id = ?"
      DB.execute(query, @title, @description, @done ? 1 : 0, @id)
    end
  end

  def self.all
    DB.execute("SELECT * FROM tasks").map { |task| build_task(task) }
  end

  def destroy
    DB.execute("DELETE FROM tasks WHERE id = ?", @id)
  end

  private

  def self.build_task(row)
    Task.new(
      id: row["id"],
      title: row["title"],
      description: row["description"],
      done: row["done"],
    )
  end

end