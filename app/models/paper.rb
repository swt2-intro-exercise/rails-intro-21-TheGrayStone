class Paper < ApplicationRecord
    validates :year, presence: true, numericality: true
    validates :venue, presence: true
    validates :title, presence: true

    has_and_belongs_to_many :authors
end
