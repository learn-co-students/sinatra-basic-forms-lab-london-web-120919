require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index
    end
    get '/new' do
        erb :create_puppy
    end
    post '/new' do
        puppy = Puppy.create(params["puppy"])
        binding.pry
        0
    end
    post '/puppy' do
        @puppy = Puppy.find(params[:id])
        erb :display_puppy
    end
end
