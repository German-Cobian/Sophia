class ParticipationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @user_events = @user.invitations.all
    @invitations = Invitation.where(user_id: @user.id).includes(:event).order('events.id DESC')
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
