class PlayersController < ApplicationController

    def index
        render json: Player.all
    end

    def create
        player = Player.new(player_params)
        
        if player.save
            render json: player
        else
            byebug
        end 
    end

    private

    def player_params
        params.require(:player).permit(:score, :name, :board_id)
    end

end