class DropAssignmentsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :assignments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
