class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :user_id, NULL: false
      t.string :best_answer

      t.timestamps(NULL: false)
    end
  end
end
