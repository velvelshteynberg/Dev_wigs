class ConsultationsController < ApplicationController

    def new
        @consultation_request = Consultation.new
        @client = Client.new
    end

    def create
    end

end
