class CreateCardExpansions < ActiveRecord::Migration
  def change
    create_table :card_expansions do |t|
      t.string :set_code
      t.string :card_name
      t.string :rarity
      t.integer :card_num
      t.string :image

      t.timestamps
    end
  end
end
