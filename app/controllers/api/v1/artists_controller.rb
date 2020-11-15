module Api
  module V1
      class ArtistsController < ApplicationController

        def artists
          artists_service = ArtistsService.new
        end
      end
  end
end