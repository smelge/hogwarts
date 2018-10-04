require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( './models/hogwarts_stuff.rb' )
also_reload( './models/*' )

get '/students' do
  @students = Student.find_all()
  erb(:students)
end
