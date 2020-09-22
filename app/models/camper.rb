class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :name, uniqueness: true
    validates :age, numericality: {greater_than: 8}
    validates :age, numericality: {les_than: 18}
end
