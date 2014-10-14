require 'sqlite3'

# Open a database
# db = SQLite3::Database.new "test.db"
# $ sqlite3 test.db

# db.methods
#db.execute("SELECT * FROM people")
# => [[2, "Ferris"], [3, "Godin"]] 
# each element represents a row

# db.execute("SELECT * FROM people where name LIKE 'G%'")
# => [[3, "Godin"]]

db = SQLite3::Database.new "blog-engine.db"

puts "Name the author whose posts you'd like to read: "
author_name = gets.strip
author_query = """SELECT posts.title FROM posts 
                  JOIN people on posts.people_id = people.id
                  WHERE people.name = '#{author_name}'"""
results = db.execute(author_query)
# [["Posts Title"]]
results.each do |result|
  puts result[0]
end

#THIS IS NOT SAFE AGAINST SQL injects
# author_name could equal '; DROP TABLE posts;
# What you do instead is
author_query = """SELECT posts.title FROM posts 
                  JOIN people on posts.people_id = people.id
                  WHERE people.name = '?'"""
results = db.execute(author_query, author_name)                 


# def shift_a_person(db)
#   db.execute("DELETE FROM people LIMIT 1")
# end
