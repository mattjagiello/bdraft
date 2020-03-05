class Review < ApplicationRecord
    belongs_to :user
    belongs_to :beer
    validates :content, presence: true

    def beer_name_from_id(number)
        beer = Beer.find_by(id: number)
        beer.name
    end
end
