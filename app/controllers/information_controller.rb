class InformationController < ApplicationController
  def index
    @clients = Client.all
    @freelancer = Freelancer.all
  end

  def show
    @client = Client.find(params[:id])
    @freelancer = Freelancer.all
  end

end
