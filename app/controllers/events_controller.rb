class EventsController < ApplicationController
  before_action :authenticate_user!
 
  def index
    @events = Event.all
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

    if @event.save
      flash[:success] = 'Event created!'
      redirect_to users_path(event_id: @event.id)
    else
      flash[:alert] = 'Some error'
      render 'new'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    if @event.destroy
      flash[:success] = 'Event destroyed!'
      redirect_to @event
    else
      flash[:alert] = 'Some error'
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date, :image, :user_id)
  end
end