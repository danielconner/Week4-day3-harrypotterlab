require( 'sinatra')
require( 'sinatra/contrib/all')
require_relative( './models/student.rb')
require_relative( './models/house.rb')


# index
get '/students' do
  @students = Student.all()
  erb(:index)
end

post "/students" do
  @student = Student.new(params)
  @student.save
  erb(:create)
end

get "/students/new" do
  @houses = ["gryffindor", "Slytherin", "hufflepuff", "Ravenclaw"]
  erb(:new)
end

get "/students/:id" do
  @student = Student.find(params[:id])
  erb(:show)
end
