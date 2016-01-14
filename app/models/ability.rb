class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, :destroy, to: :crud
    alias_action :create, :read, :update, to: :cru
    return if user.blank?
    if user.admin?
      can :manage, :all
    elsif user.president?
      can :crud, User
      can :crud, News
      can :crud, Project
    elsif user.exec?
      can :read, User
      can :cru, News
      can :cru, Project
    elsif user.user?
      can :read, News
      can :read, Project
      can :cru, User, user: user
    elsif user.guest?
      can :read, News
      can :read, Project
    end
  end
end
