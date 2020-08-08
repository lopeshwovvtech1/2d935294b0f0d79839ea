class Question < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: :user_id
  belongs_to :topic, class_name: "Topic", foreign_key: :topic_id
  has_many :answers, class_name: "Answer"	
end
