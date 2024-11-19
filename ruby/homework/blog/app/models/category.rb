class Category < ApplicationRecord
    has_many :articles
    has_one_attached :image

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 10 }
end
