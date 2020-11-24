class FreelancersController < ApplicationController

    def new
        @freelancer = Freelancer.new
    end

    def create
        @freelancer = Freelancer.new(freelancer_params)
        if @freelancer.save
        redirect_to freelancer_path(@freelancer)
        else
        render 'new'
        end
    end

    def show
        @freelancer = Freelancer.find(params[:id])
    end
        
    def index
        @freelancers = Freelancer.all
    end

    private
    def freelancer_params
    params.require(:freelancer).permit(:Name, :Skills, :Experience, :City, :Engagement, :Salary)
    end
end
