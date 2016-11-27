require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/owner.rb' )

# list of owners 
get '/owners' do

end

#add new owner to list
get '/owners/new' do

end

# updated owner list
post '/owners' do

end

#remove owner from list
post '/owners/:id/delete' do

end