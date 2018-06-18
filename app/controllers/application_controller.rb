class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/:id' do
    binding.pry
    @recipes = Recipe.find_by_id(params[:id])
    erb :show
  end

  post '/recipe' do
  end
end
