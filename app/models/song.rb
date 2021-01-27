class Song < ApplicationRecord
    has_many :songbrackets, :dependent => :destroy
    has_many :brackets, through: :songbrackets
end
