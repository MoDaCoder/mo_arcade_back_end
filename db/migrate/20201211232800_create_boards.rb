class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.integer :score
      t.references :player

      t.timestamps
    end
  end
end
