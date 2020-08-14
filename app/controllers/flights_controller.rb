class FlightsController < ApplicationController

    def index
        @flights = Flight.all
    end

    def new
        @flight = Flight.new
    end

    def show
        @flight = Flight.find(params[:id])
    end

    def edit
        @flight = Flight.find(params[:id])
    end



  private

#   def whitelisted_post_params
#       params.require(:flight).permit(:description,:location, :date, :creator, :creator_id, :attendees)
#   end

end
