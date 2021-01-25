class BracketsController < ApplicationController

       
    def show
        @bracket = Bracket.find(params[:id])
        render json: @bracket
    end
    
    def index
        @brackets = Bracket.all
        render json: @brackets
    end
    
    def new
        @bracket = Bracket.new
    end
    
    def edit
        @bracket = Bracket.find(params[:id])
    end
    
    def update
        @bracket = Bracket.find(params[:id])
        @bracket.update(bracket_params)
    end
    
    private
    
    def bracket_params
        params.require(:bracket).permit(:id, :name, :category)
    end
end