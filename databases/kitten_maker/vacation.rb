

#require gems

require 'sqlite3'
# Create SQLite3 database 

db = SQLite3::Database.new("vacation.db")
db.results_as_hash = true

create_vacation_cmd = <<-SQL

	CREATE TABLE IF NOT EXISTS summer_vacation(
		id INTEGER PRIMARY KEY,
		vacationName VARCHAR(255),
		destination VARCHAR(255),
		timeOut INT
	)
SQL

# Create tables with commands

db.execute(create_vacation_cmd)

#test vacation
# db.execute("INSERT INTO summer_vacation (vacationName, destination, timeOut) VALUES ('East Coast Adventure', 'Rhode Island', 5)")
# create a method to create a vacation

#def create_vacation(db, vacationName, destination, timeOut)

#	db.execute("INSERT INTO users (vacationName, destination, timeOut) VALUES (?, ?, ?)", [vacationName, destination, timeOut])

#end

def create_vacation(db, vacationName, destination, timeOut)
  db.execute("INSERT INTO summer_vacation (vacationName, destination, timeOut) VALUES (?, ?, ?)", [vacationName, destination, timeOut])
end

# driver code
# create_vacation(db, "East Coast Adventure", "Rhode Island", 5)
# create_vacation(db, "Rocky Mountain High", "Points West", 7)

#### UI ####

puts "Summer is halfway through (screw the summer solstice).
What is the name of your vacation? Anything cool like #beachlife?"
vacationName = gets.chomp

puts "Where are you headed?"
destination = gets.chomp

puts "How many days will you be out?"
timeOut = gets.chomp.to_i
	
create_vacation(db, vacationName, destination, timeOut)
