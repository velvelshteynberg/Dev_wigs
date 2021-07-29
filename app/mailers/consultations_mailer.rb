class ConsultationsMailer < ApplicationMailer
    default from: 'velvelshteynberg@gmail.com'

    def consultation_mailer(client)
      @client = client
      mail(to: @client.email, subject: 'Consultation confirmation')
    end

    def processed_email_mailer(client)
      @client = client
      mail(to: @client.email, subject: 'Consultation scheduling')
    end 
end
