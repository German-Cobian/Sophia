class InvitationsController < ApplicationController
  before_action :authenticate_user!
  before_action :host_user, only: %i[create update destroy]

  def create
    host = User.find(current_user.id)
    event = Event.find(params[:event_id])
    user = User.find(params[:user_id])
    @invitation = Invitation.new(event_id: event.id, user_id: host.id, invitee_id: user.id)
    @invitation.save
    respond_to do |format|
      format.html { redirect_to event }
    end
  end

  def update
    @event = Event.find(params[:event_id])
    @reservation = @event.invitations.find_by(event_id: @event.id, invitee_id: current_user.id)
    @reservation.update_attribute(:status, params[:status])
    respond_to do |format|
      format.html { redirect_to @event }
    end
  end

  def destroy
    @invitation = Invitation.find(params[:id])
    @event = Event.find(params[:event_id])

    if @invitation.user_id == current_user.id
      @invitation.destroy
    else
      @invitation.update_attribute(:status, params[:status])
    end
    respond_to do |format|
      format.html { redirect_to @event }
    end
  end


  private

  def invitation_params
    params.require(:invitation).permit(:event_id, :user_id, :status)
  end
end