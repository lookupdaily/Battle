require 'sinatra/base'

class Battle < Sinatra::Base

  set :session_secret, 'Secret'

  get '/Battle' do
    'Hello Battle'
  end

end
