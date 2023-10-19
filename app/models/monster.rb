class Monster < ApplicationRecord
  has_many :victims
  validates :name, presence: true, uniqueness: true
  validates :victims_are_old_enough

  def victims_are_old_enough #sin_probar
    if victims.any? { |victim| victim.age <= 18 }
      errors.add(:victims, "deben tener más de 18 años")
    end
  end
end