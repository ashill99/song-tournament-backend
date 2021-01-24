class SongsController < ApplicationController
    # def show
    #     @song = Song.find(song_params[:id])
    #     render json: @song
    # end

    def index
        @songs = Song.all
        render json: @songs
    end

    def new
        @song = Song.new
    end

    # def update
    #     @song.update(params)
    # end

    private

    def song_params
        params.require(:song).permit(:id,
                                     :isRound1winner,
                                     :isRound2winner,
                                     :isRound3winner,
                                     :isRound4winner,
                                     :isRound5winner )
    end
end
