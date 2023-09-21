class FollowingsController < ApplicationController
  before_action :authenticate_user!

  def index
    user
    @followings = user.followings.all
  end

  def create
    following = user.followings.create(following_params)
  end

  def destroy
    user
    following = Following.find(params[:id])
    following.destroy
  end

  private

  def user
    @user ||= User.find(params[:user_id])
  end

  def following_params
    params.permit(:following_user_id)
  end
end