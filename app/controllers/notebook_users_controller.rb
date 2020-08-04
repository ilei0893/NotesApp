class NotebookUsersController < ApplicationController
  def create
    @notebookUser = NotebookUser.create(notebook_id: params[:notebook_id], user_id: params[:user_id])
    redirect_to '/notebooks', notice: 'Notebook was successfully shared.'
end

  def destroy
    @notebookUser = NotebookUser.find(params[:notebook_id]).destroy
  end
end
