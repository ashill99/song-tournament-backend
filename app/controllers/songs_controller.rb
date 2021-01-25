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

    def create 
        @song = Song.create(song_params)
        render json: @song
    end 

    private

    def song_params
        params.require(:song).permit(:id, :spotify_id, :name, :artists, :album, :image, :uri)
    end
end