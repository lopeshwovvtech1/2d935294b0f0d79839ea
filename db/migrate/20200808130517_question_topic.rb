class QuestionTopic < ActiveRecord::Migration[5.2]
  def change
  	add_column :questions, :topic_id, :integer
  	add_column :topics, :user_id, :integer
  end
end
