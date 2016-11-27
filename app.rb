require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/looneys_controller')
require_relative('controllers/owners_controller')

get '/' do
  erb( :index )
end