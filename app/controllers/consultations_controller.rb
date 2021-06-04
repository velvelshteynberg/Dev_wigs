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
        @client.save

        submitted_consultation_request = params[:consultation][:request]
        @consultation.request = submitted_consultation_request
        

        #change this to a private method

        

            if @client.save

            @consultation.client_id = @client.id
            @consultation.save
            
            # Tell the UserMailer to send a welcome email after save
            #using https://launchschool.com/blog/handling-emails-in-rails to get the email to work
            ConsultationsMailer.consultation_mailer(@client).deliver

            render plain: "you have successfully requested a consultation"
           
            else
            render plain: "We have not been able to process your consultation request"
            
            end 

    end

end
