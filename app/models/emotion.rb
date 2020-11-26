class Emotion < ApplicationRecord
  belongs_to :genre
  has_many :emotions_of_animes
  has_many :animes, through: :emotions_of_animes
end
