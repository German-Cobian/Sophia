module InvitationsHelper
  def accepted?(invitation)
    invitation.status == 'approved'
  end

  def declined?(invitation)
    invitation.status == 'cancelled'
  end
end
