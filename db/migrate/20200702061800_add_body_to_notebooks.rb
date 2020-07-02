class AddBodyToNotebooks < ActiveRecord::Migration[6.0]
  def change
    add_column :notebooks, :body, :string
  end
end
