class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    alias_action :create, :read, :update, :destroy, to: :crud
    alias_action :create, :read, :update, to: :cru
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
    elsif user.member?
      can :read, News
      can :read, Project
      can :cru, User if user == User.params_user
    end
  end
end
