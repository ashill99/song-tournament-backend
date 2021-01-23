class SongbracketSerializer < ActiveModel::Serializer
  attributes :id, :song_id, :bracket_id, :source_id
end
