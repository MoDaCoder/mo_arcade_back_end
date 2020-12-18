class PlayersController < ApplicationController

    def index
        render json: Player.all
    end

    def create
        byebug  
        # render json: Player.create
    end
end
