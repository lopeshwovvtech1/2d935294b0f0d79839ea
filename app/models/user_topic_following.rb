class UserTopicFollowing < ApplicationRecord
  belongs_to :topic, class_name: "Topic", foreign_key: :topic_id
  belongs_to :user, class_name: "User", foreign_key: :user_id
end