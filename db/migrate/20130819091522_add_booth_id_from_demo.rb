class AddBoothIdFromDemo < ActiveRecord::Migration
  def change
    add_column :demos, :booth_id, :integer
  end
end
