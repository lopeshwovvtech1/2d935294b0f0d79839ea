class QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  def show
  	@user_following = UserFollower.where(following_user_id: current_user.id, follow_to_user_id: @question.user_id)
  	@user_topic_following = UserTopicFollowing.where(user_id: current_user.id, topic_id: @question.topic_id)
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end	
end
