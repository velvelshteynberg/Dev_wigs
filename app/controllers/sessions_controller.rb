class SessionsController < ApplicationController

    def new
    end 

    def create
        submitted_email = params[:session][:email]
        submitted_password = params[:session][:password]
        @user = User.find_by(email: submitted_email)

        if @user && @user.authenticate(submitted_password)
            #create a session 
            session[:user_id] = @user.id
            redirect_to reviews_url
        else
            render :new
        end 
    end 

    def destroy
        #finish a session 
        session[:user_id] = nil
        redirect_to root_url
    end 
    
end
