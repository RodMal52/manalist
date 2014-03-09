class CreateDeckCards < ActiveRecord::Migration
  def change
    create_table :deck_cards do |t|
      t.string :card_name
      t.integer :deck_id
      t.integer :quantity

      t.timestamps
    end
  end
end
