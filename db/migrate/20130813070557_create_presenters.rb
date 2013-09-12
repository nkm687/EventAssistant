class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string :name
      t.string :team

      t.timestamps
    end
  end
end
