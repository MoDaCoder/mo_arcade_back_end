class BoardsController < ApplicationController
    
    def index
        render json: Board.all.map {|board| BoardSerializer.new(board)}
    end
    
    def create
        board = Board.new(board_params)

        if board.save
            render json: BoardSerializer.new(board)
        end
    end

    private
    def board_params
        params.require(:board).permit(:name, :img)
    end
end
