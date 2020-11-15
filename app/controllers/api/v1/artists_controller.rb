module Api
  module V1
      class ArtistsController < ApplicationController
        def index
          artists_service = ArtistsService.new
          @artists = artists_service.get_artist_by_name('Queen')
          render json: @artists
        end
      end
  end
end