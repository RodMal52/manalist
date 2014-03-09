class CreateSideBoards < ActiveRecord::Migration
  def change
    create_table :side_boards do |t|
      t.integer :side_id

      t.timestamps
    end
  end
end
