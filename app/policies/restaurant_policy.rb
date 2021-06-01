class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    !user.nil?
  end
  # record => the object you are trying to authorize
  # user => The current_user

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
