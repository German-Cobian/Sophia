module ParticipationsHelper

  def attended_past
    @user.invitations.attended_past.includes(:event)
  end

  def enrolled_future
    @user.invitations.enrolled_future.includes(:event)
  end

  def pending_accept
    @user.invitations.pending_accept.includes(:event)
  end
end