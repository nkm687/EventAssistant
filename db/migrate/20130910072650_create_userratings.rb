class CreateUserratings < ActiveRecord::Migration
  def change
    create_table :userratings do |t|
      t.string :name
      t.integer :demo
      t.integer :rating

      t.timestamps
    end
  end
end
