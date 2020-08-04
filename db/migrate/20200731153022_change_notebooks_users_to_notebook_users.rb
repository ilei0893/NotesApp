class ChangeNotebooksUsersToNotebookUsers < ActiveRecord::Migration[6.0]
  def change
    rename_table :notebooks_users, :notebook_users
  end
end
