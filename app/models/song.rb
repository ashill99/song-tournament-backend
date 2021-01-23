class Song < ApplicationRecord
    has_many :songbrackets
    has_many :brackets, through: :songbrackets

end
