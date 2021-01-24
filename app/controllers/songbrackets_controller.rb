class SongbracketsController < ApplicationController
    skip_before_action :authorized

    def show
        @songbracket = Songbracket.find(params[:id])
        render json: @songbracket
    end

    def index
        @songbrackets = Songbracket.all
        render json: @songbrackets
    end

    def create
        @songbracket = Songbracket.create(songbracket_params)
        render json: @songbracket
    end

    def destroy 
        @songbracket = Songbracket.find(params[:id])
        @songbracket.destroy
    end

    def update
        @songbracket = Songbracket.find(params[:id])
        @songbracket.update(songbracket_params)
        render json: @songbracket
    end

    private

    def songbracket_params
        params.require(:songbracket).permit(:song_id, :bracket_id)
    end

end

