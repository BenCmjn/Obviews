class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.integer :candidate_1_id
      t.integer :candidate_2_id
      t.integer :lock

      t.timestamps
    end
  end
end
