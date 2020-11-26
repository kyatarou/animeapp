class Situation < ApplicationRecord
  belongs_to :genre
  has_many :situations_of_animes
  has_many :animes, through: :situations_of_animes
end
