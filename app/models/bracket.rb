class Bracket < ApplicationRecord
    has_many :songbrackets, :dependent => :destroy
    has_many :songs, through: :songbrackets
end
