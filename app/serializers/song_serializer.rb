class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :album, :snippet, :artwork, :round1winner, :round2winner, :round3winner, :round4winner, :round5winner
  has_many :songbrackets
  has_many :brackets, through: :songbrackets
end
