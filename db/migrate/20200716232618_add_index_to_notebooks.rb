class AddIndexToNotebooks < ActiveRecord::Migration[6.0]
  def change
    add_index :notebooks, :user_id
  end
end
