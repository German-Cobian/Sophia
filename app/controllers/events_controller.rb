class EventsController < ApplicationController
  before_action :authenticate_user!
 
  def index
    @events = Event.all

    @upcoming_events = @events.upcoming.order(:date)
    @past_events = @events.past.order(:date)
  end

  def show
    @event = Event.find(params[:id])
    @reservation = @event.invitations.find_by(event_id: @event.id, invitee_id: current_user.id) if current_user  
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    @event.save
    redirect_to guestlists_path(event_id: @event.id)
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy
    redirect_to @event
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :image, :user_id)
  end
end