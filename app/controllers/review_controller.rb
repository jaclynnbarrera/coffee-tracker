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
       @review = Review.create(:name=>params[:name], :neighborhood => params[:neighborhood], :rating=> params[:rating], :content => params[:content],:work_space => params[:work_space], :user_id => current_user.id)
       redirect to "/reviews/#{@review.id}"
    end
    
    #READ ALL reviews belonging to user
    get '/reviews' do 
        @reviews = current_user.reviews
        erb :'/reviews/index'
    end

    #read specific review
    get '/reviews/:id' do 
        @review = Review.find_by(id: session[:user_id])
    end

    #RENDERS EDIT PAGE FOR SPECIFIC REVIEW
    get '/reviews/:id/edit' do 
    end

    #ACTUALLY UPDATE REVIEW AND PROCESS
    patch '/reviews/:id' do

    end

    #DELTE

end