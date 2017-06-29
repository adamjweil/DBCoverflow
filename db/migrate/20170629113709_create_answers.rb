class CreateAnswers < ActiveRecord::Migration
  def change
      create_table :answers do |t|
        t.string :answer
        t.integer :user_id, NULL: false
        t.integer :question_id

        t.timestamps(NULL: false)
      end
  end
end
