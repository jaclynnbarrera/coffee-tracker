class UserController < ApplicationController
    
    #sign up
    get '/signup' do
        if !logged_in?
            erb :'user/create_user'
          else
            redirect to '/reviews'
        end
    end

    post '/signup' do
        if logged_in?
            redirect to '/reviews'
        else
            @user = User.new(:username => params[:username], :password => params[:password]) 
            @user.save
            session[:user_id] = @user.id
            redirect to '/reviews'
        end
    end

    #login
    get '/login' do
    end

    #logout
    get '/logout' do

    end
end