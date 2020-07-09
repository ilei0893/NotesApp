class NotebookPolicy < ApplicationPolicy
    class Scope < Scope
        def resolve
            scope.where(user_id: user.id)
        end
    end

    def create?
        record.user_id == user.id
    end

    def show?
        record.user_id == user.id
    end

end