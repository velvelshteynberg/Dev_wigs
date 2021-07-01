class ConsultationsController < ApplicationController

    def new
        @client = Client.find(params[:client_id])
        @consultation = Consultation.new
    end

    def create
        @client = Client.find(params[:client_id])
        @consultation = Consultation.new(consultation_params)
        @consultation.client = @client
        if @client.update(client_params) && @consultation.save

        # Tell the UserMailer to send a welcome email after save
        #using https://launchschool.com/blog/handling-emails-in-rails to get the email to work
            ConsultationsMailer.consultation_mailer(@client).deliver

            redirect_to root_url, notice: "Consultation successfully requested. You will get an email confirmatiion momentarily"
           
            else
            render plain: "We have not been able to process your consultation request"
            
            end 



    end
    
    private 
    def consultation_params 
        params.require(:consultation).permit(:request)
    end 

    def client_params 
        params.require(:client).permit(:first_name, :last_name, :email, :phone)
    end 

end
