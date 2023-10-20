class AddMonsterReferenceToVictims < ActiveRecord::Migration[7.0]
  def change
    add_reference :victims, :monster, foreign_key: true
  end
end
