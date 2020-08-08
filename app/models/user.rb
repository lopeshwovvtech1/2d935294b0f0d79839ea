class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions, class_name: "Question"
  has_many :answers, class_name: "Answer"	

  def full_user_name
  	"#{self.first_name} #{self.last_name}"
  end	
end
