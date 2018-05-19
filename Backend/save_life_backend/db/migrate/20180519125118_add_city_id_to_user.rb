class AddCityIdToUser < ActiveRecord::Migration[5.2]
  def up
     add_column :users, :city_id, :integer, :null => false, :foreign_key => true, :index => true
  end
  
  def down
    remove_column :users, :city_id
  end
end
