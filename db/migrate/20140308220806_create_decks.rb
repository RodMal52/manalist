class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer :deck_id
      t.string :username
      t.string :name
      t.string :format
      t.string :type
      t.string :colors
      t.integer :rating
      t.date :creation_date
      t.date :last_update

      t.timestamps
    end
  end
end
