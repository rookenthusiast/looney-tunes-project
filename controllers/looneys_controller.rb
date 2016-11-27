require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/looney.rb')

# show a list of looneys to adopt
get '/looneys' do

end

#add new looney to adopt form
get '/looneys/new' do

end

# updated looney list
post '/looneys' do

end

#remove looney from list
post '/looneys/:id/delete' do

end
