class CreateExpansions < ActiveRecord::Migration
  def change
    create_table :expansions do |t|
      t.string :set_code
      t.string :name
      t.string :symbol
      t.integer :size
      t.integer :common_cards_num
      t.integer :uncommon_cards_num
      t.integer :rare_cards_num
      t.integer :mythic_cards_num
      t.integer :other_cards_num

      t.timestamps
    end
  end
end
