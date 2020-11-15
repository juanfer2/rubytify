class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :preview_url, :duration_ms, :explicit, :spotify_url, :spotify_id
  has_one :album
end
