class Apartment < ApplicationRecord
    validates :number, numericality: true
end
