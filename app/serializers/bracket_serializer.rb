class BracketSerializer < ActiveModel::Serializer
    attributes :id, :name, :category
    has_many :songbrackets
    has_many :songs, through: :songbrackets
end
