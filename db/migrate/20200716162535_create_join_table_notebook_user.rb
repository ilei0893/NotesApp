class CreateJoinTableNotebookUser < ActiveRecord::Migration[6.0]
  def change
    create_join_table :notebooks, :users do |t|
      # t.index [:notebook_id, :user_id]
      # t.index [:user_id, :notebook_id]
    end
  end
end
