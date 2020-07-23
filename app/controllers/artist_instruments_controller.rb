class ArtistInstrumentsController < ApplicationController

    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create
        @artist_instrument = ArtistInstrument.new(artinst_params)
        if @artist_instrument.save
            redirect_to artist_path(@artist_instrument.artist)
        else
            render :new
        end
    end

    private
    def artinst_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end
end
