class ReviewController < ApplicationController

    get '/reviews/new' do 
        if logged_in?
            erb :'reviews/new'
        else
            redirect to '/login'
        end
    end

    post '/reviews' do 
        if params[:name] == "" || params[:rating] == "" || params[:neighborhood] == "" || params[:content] == "" || params[:work_space] == ""
            redirect to '/reviews/new'
        else
            @review = Review.create(:name=>params[:name], :neighborhood => params[:neighborhood], :rating=> params[:rating], :content => params[:content],:work_space => params[:work_space], :user_id => current_user.id)
            redirect to "/reviews/#{@review.id}"
        end
    end
    
    get '/reviews' do 
        if logged_in?
            @reviews = current_user.reviews
            erb :'/reviews/index'
        else
            redirect to '/login'
        end
    end

    get '/reviews/:id' do 
        @review = Review.find_by(id: params[:id])
        if @review.user_id == session[:user_id]
            erb :'reviews/show'
        else
            redirect to '/reviews'
        end
    end

    get '/reviews/:id/edit' do 
        @review = Review.find_by(id: params[:id])
        if @review.user_id == session[:user_id]
            erb :'reviews/edit'
        else
            redirect to '/reviews'
        end
    end

    patch '/reviews/:id' do
        @review = Review.find_by(id: params[:id])
        @review.name = params[:name]
        @review.content = params[:content]
        @review.rating = params[:rating]
        @review.work_space = params[:work_space]
        @review.neighborhood = params[:neighborhood]
        @review.save
        redirect to "/reviews/#{@review.id}"
    end

    delete '/reviews/:id/delete' do
        @review = Review.find_by(id: params[:id])
        if @review.user_id == session[:user_id]
            @review.delete
            redirect to '/reviews'
        end
    end

end