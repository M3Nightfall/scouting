class ScoutsController < ApplicationController


    def index 
        @scoutingsmembers = ScoutingsMember.all
    end

    def show
        @scoutingsmembers = ScoutingsMember.find(params[:id])
        render json: @scoutingsmembers
    end

end
