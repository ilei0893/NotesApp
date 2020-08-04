class NotebookUsersPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:notebook_users).where(notebook_users: { user_id: user.id })
    end
  end

  def create?
    record.user_id == user.id
  end

  def show?
    record.users.include?(user)
    record.notebook_users.map(&:user_id).include?(user.id)
  end

  def edit?
    record.user_id == user.id
  end

  def destroy?
    record.user_id == user.id
  end

  def update?
    record.user_id == user.id
  end
  end
