class InformationController < ApplicationController
  def index
    @clients = Client.all
    @freelancer = Freelancer.all
  end
end
