# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end
# ***************


# 1 A /contact route that displays an address (you can make up the address).
# address - 3200 Dollywood Drive Austin, TX 78757
# http://localhost:4567/postal/:3200%20Dollywood%20Drive%20Austin,%20TX%2078757
get '/postal/:address' do
	address = params[:address]
	"The address is #{address}."
end

# 2 A /great_job route that can take a person's name as a query 
# parameter (not a route parameter) and say "Good job, 
# [person's name]!". If the query parameter is not present, the 
# route simply says "Good job!"
# http://localhost:4567/great_job/?name=Rick
get '/great_job' do
	name = params[:name]
	if name
		"Good job, #{name}!"
	else
		"Good job!"
	end	
end

# A route that uses route parameters to add two numbers and 
# respond with the result. The data types are tricky here -- 
# when will the data need to be (or arrive as) a string?
#http://localhost:4567/addition/:int_1/adds/:int_2
get '/addition/' do
	int_1 = params[:int_1]
	int_2 = params[:int_2]
	result = params[:int_1] + params[:int_2]
	result
end
