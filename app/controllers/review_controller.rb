class ReviewController < ApplicationController
    #CREATE
    get '/reviews/new' do 
        if logged_in?
            erb :'reviews/new'
        else
            redirect to '/login'
        end
    end

    post '/reviews' do 
        binding.pry
    end
    
    #READ ALL
    get '/reviews' do 
        "we made it to reviewssss"
        # @reviews = Review.all
        # erb :'/reviews/index'
    end

    #read specific review
    get '/reviews/:id' do 
    end

    #RENDERS EDIT PAGE FOR SPECIFIC REVIEW
    get '/reviews/:id/edit' do 
    end

    #ACTUALLY UPDATE REVIEW AND PROCESS
    patch '/reviews/:id' do

    end

    #DELTE

end