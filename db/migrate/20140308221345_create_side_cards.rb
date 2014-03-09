class CreateSideCards < ActiveRecord::Migration
  def change
    create_table :side_cards do |t|
      t.integer :side_id
      t.string :card_name
      t.integer :quantity

      t.timestamps
    end
  end
end
