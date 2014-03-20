class CreateCardExpansions < ActiveRecord::Migration
  def change
    create_table :card_expansions, :id => false do |t|
      
      t.references:expansion
      t.references :card
      t.string :rarity
      t.integer :card_num
      t.string :image

      t.timestamps
    end
    
  end
end
