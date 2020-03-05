class Brewery < ApplicationRecord
    has_many :beer_breweries
    has_many :beers, through: :beer_breweries
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
    validates :city, presence: true
    validates :zip_code, presence: true, length: { is: 5 }
end
