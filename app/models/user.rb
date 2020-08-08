class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions, class_name: "Question"
  has_many :answers, class_name: "Answer"	
  has_many :user_followings, class_name: "UserFollower", foreign_key: :following_user_id
  has_many :followings, :through => :user_followings, source: :following_user  
  has_many :user_topic_followings, class_name: "UserTopicFollowing", foreign_key: :user_id
  has_many :topics, class_name: "Topic", :through => :user_topic_followings
  def full_user_name
  	"#{self.first_name} #{self.last_name}"
  end	
end
