class ChangeNotebookBodyToBeText < ActiveRecord::Migration[6.0]
  def up
    change_column :notebooks, :body, :text
  end

  def down
    change_column :notebooks, :body, :string
  end
end
