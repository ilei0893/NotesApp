class AddForeignKey < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :notebooks, :users
  end
end
