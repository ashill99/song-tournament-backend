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
        params.require(:song).permit(:id,
                                     :round1winner,
                                     :round2winner,
                                     :round3winner,
                                     :round4winner,
                                     :round5winner )
    end
end
