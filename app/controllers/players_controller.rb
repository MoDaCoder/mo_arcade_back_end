class PlayersController < ApplicationController

    def index
        render json: Player.all
    end

    def create
        # byebug  
        player = Player.new(player_params)
        
        if player.save
            render json: player
        else
            byebug
        end 
    end

    private

    def player_params
        params.require(:player).permit(:name, :score, :board_id)
    end

end