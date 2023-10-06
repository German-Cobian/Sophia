class HostingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @user_hosted_events = @user.events.all.order(created_at: :desc)
    @invitations = Invitation.where(user_id: @user.id).includes(:event).order('events.id DESC')
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
