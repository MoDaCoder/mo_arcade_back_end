class PlayersController < ApplicationController

    def index
        render json: Player.all.map {|player| PlayerSerializer.new(player)}
    end

    def create
        player = Player.new(player_params) 
         
        player.save
            render json: PlayerSerializer.new(player) 
    end

    private

    def player_params
        params.require(:player).permit(:name)
    end

end