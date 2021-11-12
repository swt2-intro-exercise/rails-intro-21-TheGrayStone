class Paper < ApplicationRecord
    validates :year, presence: true, numericality: true
    validates :venue, presence: true
    validates :title, presence: true
end
