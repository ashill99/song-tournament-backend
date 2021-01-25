class SongbracketSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :bracket_id
  belongs_to :song, :bracket
end
