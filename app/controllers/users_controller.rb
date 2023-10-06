class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @users_show = @users.reject { |user| user == Event.find(params[:event_id]).creator }
    @invitation = Invitation.find_by(event_id: params[:event_id], user_id: current_user.id)
    @event = Event.find(params[:event_id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :display_name, :role, :email, :date_of_birth, :city, :country, :bio,
                                 :avatar)
  end
end
