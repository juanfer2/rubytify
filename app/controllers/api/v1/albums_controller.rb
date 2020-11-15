module Api
  module V1
      class AlbumsController < ApplicationController
        def index
          albums_service = AlbumsService.new
          @albums = albums_service.get_albums_by_artist('1dfeR4HaWDbWqFHLkxsg1d')
          render json: @albums
        end
      end
  end
end