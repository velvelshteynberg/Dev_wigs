class UsersController < ApplicationController

    def new
        @user = User.new
    end 

    def create
        @user = User.new
        submitted_email = params[:user][:email]
        submitted_password = params[:user][:password]
        submitted_password = params[:user][:password_confirmation]

        if @user.save 
            redirect_to new_session_path
        else
            render plain: "You have not been able to succwfully create a user"
        end 
    end 

end
