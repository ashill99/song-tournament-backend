class SongsController < ApplicationController
    
    def show
        @song = Song.find(params[:id])
        render json: @song
    end

    def index
        @songs = Song.all
        render json: @songs
    end

    def new
        @song = Song.new
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(song_params)
    end

    private

    def song_params
        params.require(:song).permit(:id, :title, :artist, :album, :snippet, :artwork, :round1winner)
    end
end