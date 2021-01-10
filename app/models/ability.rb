# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= Admin.new
    # can :read, :all                   
    if  user.email == 'ananthu@prissy.com'
      can :access, :rails_admin
      can :read, :dashboard
      can :manage, [Category,Subcategory,Brand,Product]
    else
      can :read, :dashboard
      can :access, :rails_admin
      can :manage, :all # allow everyone to read everything
    end  
  end
end
