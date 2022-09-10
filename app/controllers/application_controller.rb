
require "./config/environment"
require "sinatra/base"
require "sinatra/flash"

class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :public_folder, "public"
    set :views, "app/views"
    register Sinatra::Flash
  end

  get '/create_post' do
    erb  :create_post
  end

  post '/post' do
  @post = Post.create(title: params[:title], post: params[:post])

  erb :post
  end

  get '/' do
    @posts = Post.all

    erb :landing_page
  end
end
