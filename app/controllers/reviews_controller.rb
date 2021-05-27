class ReviewsController < ApplicationController

    def new
    
    end 
        
    def create
            @client = Client.new
            @review = Review.new
            submitted_first_name = params[:client][:first_name]
            submitted_last_name = params[:client][:last_name]
            submitted_email = params[:client][:email]
            submitted_phone = params[:client][:phone]
            @client.first_name = submitted_first_name
            @client.last_name = submitted_last_name
            @client.email = submitted_email
            @client.phone = submitted_phone
    
            submitted_review = params[:review][:review]
            @review.review = submitted_review
    
            if @review.save && @client.save
                render plain: "Thank you for your review"
            else
                render plain: "We have not been able to process your review. Please try again later."
            end 
    end 
end
