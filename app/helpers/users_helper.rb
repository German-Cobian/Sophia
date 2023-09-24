module UsersHelper
  def find_invitation_element(event, user)
    Invitation.find_by(event_id: event.id, user_id: current_user.id, invitee_id: user.id)
  end
 
end