class ApprovalsController < ApplicationController
    #you still need before_action to actually validate even though you have a nested route
    #before_action :require_login, only: [:new]

      def create 
        #update the deafult value for approval to be true
        @review = Review.find(1)
        @review.approved = true 
        @review.save

        if @review.save
          
          render plain: "success"
        
        else

          render :"Unable to approve the review"

        end 

      end 

    def require_login
        unless  session[:user_id]
          redirect_to new_session_url
        end
    end

end
