class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comments
      t.integer :user_id, NULL: false
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps(NULL: false)
    end

    add_index :comments, [:commentable_type, :commentable_id]
  end
end
