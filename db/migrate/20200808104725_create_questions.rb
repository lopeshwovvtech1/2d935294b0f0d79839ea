class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :question_title
      t.belongs_to :user
      t.timestamps
    end
  end
end
