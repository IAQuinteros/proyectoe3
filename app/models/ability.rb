# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
user ||= User.new # usuario no logueado

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :manage, User, id: user.id
      can :create, Publication
      can :manage, Publication, user_id: user.id
      can :create, Comment
      can :manage, Comment, user_id: user.id
      can :create, Like 
      can :manage, Like, user_id: user.id
      can :create, Follower
      can :manage, Follower, user_id: user.id
    end
  end
end
