class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :album, :snippet, :artwork
  has_many :songbrackets
  has_many :brackets, through: :songbrackets
end
