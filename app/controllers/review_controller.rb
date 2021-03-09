class ReviewController < ApplicationController
    #CREATE
    get '/reviews/new' do 
        if logged_in?
            erb :'reviews/new'
        else
            redirect to '/login'
        end
    end

    #processes form input and creates new review object
    post '/reviews' do 
       @review = Review.create(:name=>params[:name], :rating=> params[:rating], :content => params[:content],:work_space => params[:work_space], :user_id => current_user.id)
       redirect to "/reviews/#{@review.id}"
    end
    
    #READ ALL
    get '/reviews' do 
        "we made it to reviewssss"
        # @reviews = Review.all
        # erb :'/reviews/index'
    end

    #read specific review
    get '/reviews/:id' do 
        "here we are"
    end

    #RENDERS EDIT PAGE FOR SPECIFIC REVIEW
    get '/reviews/:id/edit' do 
    end

    #ACTUALLY UPDATE REVIEW AND PROCESS
    patch '/reviews/:id' do

    end

    #DELTE

end