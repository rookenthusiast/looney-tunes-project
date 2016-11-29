require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/looneys_controller')
require_relative('controllers/owners_controller')
require('pry-byebug')

get '/' do
  @show_image = "block"
  erb( :index )
end