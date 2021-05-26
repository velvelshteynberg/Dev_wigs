class ConsultationsController < ApplicationController

    def new
        @consultation_request = Consultation.new
        redirect_to "views/consultation/new"
    end

    def create
    end

end
