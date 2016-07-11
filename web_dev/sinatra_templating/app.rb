# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

db1 = SQLite3::Database.new("cities.db")
db1.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/cities/new' do
  erb :new_cities
end

get "/DBC_cities" do
  erb :DBC_cities
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/cities' do
  db1.execute("INSERT INTO cities (city) VALUES (?)", [params['city']])
  redirect '/'
end

# add static resources