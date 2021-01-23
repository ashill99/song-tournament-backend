class Bracket < ApplicationRecord
    has_many :songbrackets
    has_many :songs, through: :songbrackets

end
