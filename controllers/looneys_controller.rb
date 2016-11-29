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
Looney.rub_out(params[:id])
redirect to('/looneys')
end

#show looney by its id
get '/looneys/:id' do
  @looney = Looney.find( params[:id])
  @owners = Owner.all
  erb(:'looneys/show')
end

#show edit looney details form
get '/looneys/:id/edit' do
  @looney = Looney.find(params[:id])
  @owners = Owner.all
  erb(:'looneys/edit')
end

#edited looney
post '/looneys/:id' do
Looney.update( params )
  redirect to("/looneys/#{(params[:id])}")
end

