# See the wiki for details:
# https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.admin
      can :manage, :all
    else
      can :manage, :Article, user_id: user.id
      can :manage, :Comment, user_id: user.id
    end
  end
end
