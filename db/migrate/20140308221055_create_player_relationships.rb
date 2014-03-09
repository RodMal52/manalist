class CreatePlayerRelationships < ActiveRecord::Migration
  def change
    create_table :player_relationships do |t|
      t.string :username_1
      t.string :username_2
      t.string :relationship_type

      t.timestamps
    end
  end
end
