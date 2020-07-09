class NotebookPolicy < ApplicationPolicy
    def index?
        user.user
    end