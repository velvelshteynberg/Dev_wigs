class ReviewsController < ApplicationController
    #before_action :require_login, only: [:destroy]
    def index
       
        if 
            
        #work on deleting the reviews that I'm not interested in posting on the actual website
        @not_approved_and_not_looked_over_reviews = Review.not_approved

        else 
            render :Review.approved
        end 

    end 

    def new
    
    end 
        
    def create
            @client = Client.new
            @review = Review.new

            #look into strong params (also on ruby on rails guide)
            submitted_first_name = params[:client][:first_name]
            submitted_last_name = params[:client][:last_name]
            submitted_email = params[:client][:email]
            submitted_phone = params[:client][:phone]
            @client.first_name = submitted_first_name
            @client.last_name = submitted_last_name
            @client.email = submitted_email
            @client.phone = submitted_phone
            @client.save

            submitted_review = params[:review][:review]
            @review.review = submitted_review

                if @client.save 

                @review.client_id = @client.id
                @review.save
                render plain: "Thank you for your review."

                else

                render plain: "We have not been able to process your review. Please try again later."
                
                end  
    end 

    def update 

    end 

    def destroy
        @review = Review.find_by(params[:id])
        @review.delete

    end 
end
