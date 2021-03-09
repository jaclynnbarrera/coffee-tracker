class UserController < ApplicationController
    
    get '/signup' do
        if !logged_in?
            erb :'user/create_user'
        else
            redirect to '/reviews'
        end
    end

    post '/signup' do
        if params[:username] == "" || params[:email] == "" || params[:password] == ""
            redirect to '/signup'
        else
            @user = User.new(:username => params[:username], :password => params[:password]) 
            @user.save
            session[:user_id] = @user.id
            redirect to '/reviews'
        end
    end

    get '/login' do
        if !logged_in?
            erb :'user/login'
        else
            redirect to '/reviews'
        end
    end

    post '/login' do
        user = User.find_by(:username => params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect to '/reviews'
        else
            redirect to '/signup'
        end
    end

    get '/logout' do
        session.clear
        redirect to '/login'
    end
end