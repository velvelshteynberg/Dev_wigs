class ApprovalsController < ApplicationController
    #you still need before_action to actually validate even though you have a nested route
    #before_action :require_login, only: [:new]

    def new
        
    end 

    def create

    end 

    def require_login
        unless  session[:user_id]
          redirect_to new_session_url
        end
    end

end
