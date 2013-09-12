class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.string :name
      t.text :description
      t.text :keywords
      t.float :avg_user_rating
      t.text :misc

      t.timestamps
    end
  end
end
