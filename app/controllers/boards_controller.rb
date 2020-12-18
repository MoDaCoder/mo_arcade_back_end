class BoardsController < ApplicationController
    
    def index
        render json: Board.all 
    end
    
    def create
        board = Board.new(board_params)

        if board.save
            render json: board
        end
    end

    private
    def board_params
        params.require(:board).permit(:score)
    end
end
