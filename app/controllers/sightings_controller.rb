class SightingsController < ApplicationController
    def show
        @sighting = Sighting.find(params[:id])
        options = {
            include: [:bird, :location]
        }
        render json: SightingSerializer.new(sightings, 
            options)
    end

    def index
        @sighting = Sighting.all
        render json: 
        SightingSerializer.new(sightings).to_serialized_json
    end
end
