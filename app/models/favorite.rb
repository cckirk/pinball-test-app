class Favorite < ApplicationRecord
  has_many :posts
  has_many :locations
end
