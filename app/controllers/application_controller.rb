class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/recipes' do
    erb :index
  end

  post '/recipe' do
    erb :show
  end
end
