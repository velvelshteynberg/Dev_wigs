class ConsultationsController < ApplicationController

    def new
        @consultation_request = Consultation.new
    end

    def create
    end

end
