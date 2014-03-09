class CreateDeckMatchups < ActiveRecord::Migration
  def change
    create_table :deck_matchups do |t|
      t.integer :deck_id_1
      t.integer :deck_id_2
      t.integer :wins
      t.integer :losses
      t.integer :draws
      t.date :match_date
      t.integer :config_id

      t.timestamps
    end
  end
end
