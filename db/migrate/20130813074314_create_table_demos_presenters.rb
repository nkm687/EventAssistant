class CreateTableDemosPresenters < ActiveRecord::Migration
  def up
  	create_table 'demos_presenters', :id => false do |t|
  		t.column :demo_id, :integer
    	t.column :presenter_id, :integer
  	end
  end

  def down
  end
end
