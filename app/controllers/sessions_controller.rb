class SessionsController < ApplicationController

    def new
    end 

    def create
        submitted_email = params[:session][:email]
        submitted_password = params[:session][:password]
        user = User.find_by(email: submitted_email)

        if user && user.authenticate(submitted_password)
            render plain: "you are succesfully logged in"
            #create a session 
            session[:user_id] = user.user_id
        else
            render plain: "unable to log in"
        end 
    end 

    def destroy
        #finish a session 
        session[:user_id] = nil
        redirect_to root_url
    end 
    
end
