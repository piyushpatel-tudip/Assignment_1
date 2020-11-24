class ClientsController < ApplicationController

    def new
        @client = Client.new
    end

    def create
        @client = Client.new(client_params)
        if @client.save
        redirect_to client_path(@client)
        else
        render 'new'
        end
    end

    def show
        @client = Client.find(params[:id])
    end

    def index
        @clients = Client.all
    end
        
    private
    def client_params
    params.require(:client).permit(:Name, :Skills, :Experience, :City, :Engagement, :Budget)
    end
end
