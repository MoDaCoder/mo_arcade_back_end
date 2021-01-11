class ScoresController < ApplicationController
    def index
        render json: Score.all
    end

    def create
        score = Score.new(score_params)
        
        if score.save
            render json: score
        else
            byebug
        end 
    end

    private

    def score_params
        params.require(:score).permit(:score_value, :player_id)
    end
end
