class InvitationsController < ApplicationController
  before_action :authenticate_user!
  before_action :host_user, only: %i[create]

  def create
    host = User.find(current_user.id)
    event = Event.find(params[:event_id])
    user = User.find(params[:user_id])
    @invitation = Invitation.new(event_id: event.id, user_id: host.id, invitee_id: user.id)
    @invitation.save
    respond_to do |format|
      format.html { redirect_to event }
      format.js
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:event_id, :user_id, :status)
  end
end