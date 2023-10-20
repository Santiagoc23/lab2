class Monster < ApplicationRecord
  has_many :victims
  has_many :attacks
  validates :name, presence: true, uniqueness: true
  validate :victims_are_old_enough

  #def victims_are_old_enough 
  #  if victims.any? { |victim| victim.age <= 18 }
  #    errors.add(:victims, "deben tener más de 18 años")
  #  end
  #end
  #notar que en la bd esta por fecha no por edad, no funciona
end