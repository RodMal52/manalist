class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :cardname
      t.string :manacost
      t.string :color
      t.string :power
      t.string :toughness
      t.integer :loyalty_counter
      t.string :card_type

      t.timestamps
    end
  end
end
