class UserFollower < ApplicationRecord
  belongs_to :following_user, class_name: "User", foreign_key: :following_user_id
  
  def follow_to
  	User.find(self.follow_to_user_id)
  end 	
end
