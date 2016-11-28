require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/owner.rb' )
require('pry-byebug')

# list of owners 
get '/owners' do
  @owners = Owner.all()
  
  erb ( :"owners/index" )
end

#add new owner to database
get '/owners/new' do
erb(:'owners/new')
end

# update owners database with new owner
post '/owners' do
owner = Owner.new( params )
owner.save
redirect to ('/owners')
end

#remove owner from database
post '/owners/:id/delete' do
Owner.remove(params[:id])
redirect to ('/owners')
end

#show edit owner form
get '/owners/:id/edit' do
  @owner = Owner.find(params[:id])
  erb(:edit)

end

#edited owner info
post '/owners/:id' do
Owner.update( params )
  redirect to("/owners/#{params[:id]}")
end