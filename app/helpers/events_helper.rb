module EventsHelper
  def current_user_is_host?(event)
    current_user == event.creator
  end
end