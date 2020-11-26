class Anime < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :situations_of_anime
    has_many :situations, through: :situations_of_anime
    has_many :emotions_of_anime
    has_many :emotions, through: :emotions_of_anime
end
