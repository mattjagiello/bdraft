class Beer < ApplicationRecord
    has_many :reviews
    has_many :beer_breweries
    has_many :users, through: :reviews
    has_many :breweries, through: :beer_breweries

    validates :name, presence: true
    validates :brand, presence: true, uniqueness: true
    validates :style, presence: true
    validates :abv, presence: true
    validates :strength, presence: true
    validates :likes, presence: true

    def like
        self.likes +=1
    end

    def average_rating
        if self.reviews.size > 0
        self.reviews.average(:rating) 
        else
            return 0 
        end
    end

    def self.top_beers
        Beer.all.sort_by(&:average_rating).reverse.first(10)
    end
end