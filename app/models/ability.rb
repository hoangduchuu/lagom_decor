class Ability
  include CanCan::Ability

  def initialize(admin)

      admin ||= Admin.new # guest user (not logged in)
      if admin.role? :moderator
        cannot :manage, Admin
      end
      if admin.role? :admin
        can :manage, :all
      end
  end
end
