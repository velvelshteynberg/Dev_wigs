class ConsultationsMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def consultation_mailer(client)
      @client = client
      mail(to: @client.email, subject: 'Thank you for your consultation request. We will get back to you promptly...')
    end
end
