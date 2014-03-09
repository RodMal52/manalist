class CreateDeckSides < ActiveRecord::Migration
  def change
    create_table :deck_sides do |t|
      t.integer :deck_id
      t.integer :side_id

      t.timestamps
    end
  end
end
