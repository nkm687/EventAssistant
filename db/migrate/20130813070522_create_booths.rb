class CreateBooths < ActiveRecord::Migration
  def change
    create_table :booths do |t|
      t.integer :number
      t.text :location

      t.timestamps
    end
  end
end
