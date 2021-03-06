class ApprovalsController < ApplicationController
    #you still need before_action to actually validate even though you have a nested route
    #before_action :require_login, only: [:new]

      def create 
        #update the deafult value for approval to be true
        @review = Review.find(params[:review_id])
        @review.approved = true 

        if @review.save
          redirect_to reviews_url, notice: "Review successfully approved"
        else
          render plain:"Unable to approve the review"
        end 

      end 

      def update
        @consultation = Consultation.find(params[:consultation_id])
        @consultation.processed = true 
        @client = @consultation.client

        if @consultation.save
          ConsultationsMailer.processed_email_mailer(@client).deliver_now
          redirect_to reviews_url
        else 
          render plain: 'Unable to process'
        end 
      end 

    def require_login
        unless  session[:user_id]
          redirect_to new_session_url
        end
    end

end
