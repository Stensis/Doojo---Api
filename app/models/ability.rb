class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    
    if user.admin?
      can :manage, :all
    else 
      can :read, :all
      can :create, Comment
      can :update, Comment, user_id: user.id
      can :destroy, Comment, user_id: user.id
      
      can [:create, :update, :destroy], Blog, user_id: user.id
      can :read, Blog
      
      can :read, Category
    end

    can [:read, :update], User, id: user.id
  end
end
