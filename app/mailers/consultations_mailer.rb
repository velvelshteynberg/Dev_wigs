class ConsultationsMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def consultation_confirmation_email
      @user = params[:user]
      @url  = 'http://example.com/login'
      mail(to: @user.email, subject: 'Thank you for your consultation request. We will get back to you promptly...')
    end
end
