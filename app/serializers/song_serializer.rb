class SongSerializer < ActiveModel::Serializer
  attributes :id, :spotify_id, :name, :artists, :album, :image, :uri
  has_many :songbrackets
  has_many :brackets, through: :songbrackets
end
