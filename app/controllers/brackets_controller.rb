class BracketsController < ApplicationController
    def show
        @bracket = Bracket.find(params[:id])
        render json: @bracket
    end

    def index
        @brackets = Bracket.all
        render json: @brackets
    end
    

end
