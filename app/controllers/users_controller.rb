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
            redirect_to root_url
        else
            render :new
        end 
    end 

end
