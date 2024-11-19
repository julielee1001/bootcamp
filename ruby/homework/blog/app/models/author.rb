class Author < ApplicationRecord
    has_many :articles

    validates :name, presence: true, uniqueness: true
    validates :bio, presence: true, length: { minimum: 10 }
end
