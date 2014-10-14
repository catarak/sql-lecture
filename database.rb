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