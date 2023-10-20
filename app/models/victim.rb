class Victim < ApplicationRecord
    belongs_to :monster
    has_many :attacks
    validates :name, presence: true, uniqueness: true
end