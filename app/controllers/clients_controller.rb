class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        if client
            render json: client
        else
            byebug
            render json: { error: "Client not found"}
        end
    end
end
