class ApprovalsController < ApplicationController
    #before_action :require_login, only: [:new]

    def new
        #work on deleting the reviews that I'm not interested in posting on the actual website
        @not_approved_and_not_looked_over_reviews = Review.not_approved.not_looked_over_by_admin
    end 

    def create

    end 

    def require_login
        unless  session[:user_id]
          redirect_to new_session_url
        end
    end

end
