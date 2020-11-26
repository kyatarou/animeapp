class Genre < ApplicationRecord
    has_many :situations
    has_many :emotions
end
