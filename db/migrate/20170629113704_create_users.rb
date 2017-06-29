class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, NULL: false
      t.string :email, NULL: false
      t.string :password_hash, NULL: false

      t.timestamps(NULL: false)
    end
  end
end
