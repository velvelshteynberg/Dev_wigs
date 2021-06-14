class ReviewsController < ApplicationController
    #before_action :require_login, only: [:destroy]
    def index
       @approved_reviews = Review.approved
       @awaiting_approval = Review.not_approved
       
    end 

    def new
        @client = Client.find(params[:client_id])
        @review = Review.new
    end 
        
    def create
            @client = Client.find(params[:client_id])
            @review = Review.new(review_params)

            #look into strong params (also on ruby on rails guide)
            
            @review.client = @client

                if @client.update(client_params) && @review.save
                    redirect_to reviews_url, notice: "Thank you for your review"
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

    private

    def review_params 
        params.require(:review).permit(:review)
    end 

    def client_params 
        params.require(:client).permit(:first_name, :last_name, :email, :phone)
    end 
end
