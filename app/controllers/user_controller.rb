class UserController < ApplicationController
    
    #sign up
    get '/signup' do
        if !logged_in?
            erb :'user/create_user', locals: {message: "Please sign up before you sign in"}
          else
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