class ReviewController < ApplicationController
    get '/reviews' do 
        "we made it to reviewsss"
        puts params
    end
end