class ConsultationsController < ApplicationController

    def new
    end

    def create
        @client = Client.new
        @consultation = Consultation.new
        submitted_first_name = params[:client][:first_name]
        submitted_last_name = params[:client][:last_name]
        submitted_email = params[:client][:email]
        submitted_phone = params[:client][:phone]
        @client.first_name = submitted_first_name
        @client.last_name = submitted_last_name
        @client.email = submitted_email
        @client.phone = submitted_phone

        submitted_consultation_request = params[:consultation][:request]
        @consultation.request = submitted_consultation_request

        
    respond_to do |format|
        if @consultation.save && @client.save
            render plain: "you have successfully requested a consultation"

            # Tell the UserMailer to send a welcome email after save
            UserMailer.with(user: @user).welcome_email.deliver_later

            format.html { redirect_to(@user, notice: 'User was successfully created.') }
            format.json { render json: @user, status: :created, location: @user }
        else
            render plain: "We have not been able to process your consultation request"
            format.html { render action: 'new' }
            format.json { render json: @user.errors, status: :unprocessable_entity }
        end 

    end 
    end

end
