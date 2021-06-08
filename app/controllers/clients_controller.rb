class ClientsController < ApplicationController
    def create

        @client = Client.find_by(email: params[:client][:email])
        if !@client || @client == nil 
            @client = Client.create(email: params[:client][:email])
        end 
            redirect_to new_client_consultation_url(@client)
    end 

    def client_generator

        @client = Client.find_by(email: params[:client][:email])
        if !@client || @client == nil 
            @client = Client.create(email: params[:client][:email])
        end 
        redirect_to  new_client_review_url(@client)
    end 

    
end
