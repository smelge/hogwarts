require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/hogwarts_stuff.rb' )
also_reload( './models/*' )

get '/students' do
  @students = Student.find_all()
  erb(:students)
end

get '/students/new' do
  erb(:new)
end

post '/students/new' do
  @newguy = Student.new(params)
  @newguy.save()

  @students = Student.find_all()
  erb(:students)
end
