require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/looney.rb')
require('pry-byebug')

# show a list of looneys to adopt
get '/looneys' do
  @looneys = Looney.all()
  erb ( :'looneys/index' )
end

#add new looney to adopt form
get '/looneys/new' do
  @looneys = Looney.all
  @owners = Owner.all
  erb(:'looneys/new')
end

# update looney to database
post '/looneys' do
  looney = Looney.new( params )
  looney.save
  redirect to ('/looneys')
end

#remove looney from database
post '/looneys/:id/delete' do
Looney.remove(params[:id])
redirect to('/looneys')
end