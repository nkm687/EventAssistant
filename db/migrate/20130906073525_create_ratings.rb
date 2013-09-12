class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :username
      t.integer :demoid
      t.integer :rating

      t.timestamps
    end
  end
end
