class UsersController < ApplicationController
  def user_following
  	@user_following = params[:user_id]
  	@following = UserFollower.new(following_user_id: current_user.id, follow_to_user_id: @user_following)
  	@following.save
  	redirect_to question_path(params[:question_id])
  end

  def topic_following
  	@question = Question.find(params[:question_id])
    @topic_to_follow = UserTopicFollowing.new(topic_id: @question.topic_id, user_id: current_user.id)
    @topic_to_follow.save
    redirect_to question_path(params[:question_id])
  end	
end
