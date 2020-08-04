class UsersController < ApplicationController
  def index
    @users = User.all
    @notebookId = params[:notebook_id]
  end
end
