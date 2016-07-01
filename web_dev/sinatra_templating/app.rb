# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# filter students by campus
get '/student_campus' do
  @students_SF = db.execute("SELECT * FROM students WHERE campus='SF'")
  @students_CHI = db.execute("SELECT * FROM students WHERE campus='CHI'")
  @students_NYC = db.execute("SELECT * FROM students WHERE campus='NYC'")

erb :student_campus
end


# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# create new campus via
# a from

get '/campuses/new' do
  erb :new_campuses
end

post '/campuses' do	
	db.execute("INSERT INTO campuses (name) VALUES (?)", [params['name']])
	redirect 'campuses'
end

get '/campuses' do
	@campuses = db.execute("SELECT * FROM campuses")
  erb :campus
end



# add static resources