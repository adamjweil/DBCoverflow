class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votes
      t.integer :user_id, NULL: false
      t.integer :votable_id
      t.string :votable_type

      t.timestamps(NULL: false)
    end

    add_index :votes, [:votable_type, :votable_id]
  end
end
