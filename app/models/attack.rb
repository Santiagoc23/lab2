class Attack < ApplicationRecord    
    belongs_to :victim, dependent: :destroy
    belongs_to :monster, dependent: :destroy 
end