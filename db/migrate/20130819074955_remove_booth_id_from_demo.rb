class RemoveBoothIdFromDemo < ActiveRecord::Migration
  def up
    remove_column :demos, :booth_id
  end

  def down
    add_column :demos, :booth_id, :integer
  end
end
