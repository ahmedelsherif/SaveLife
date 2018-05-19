class AddBloodTypeIdToUser < ActiveRecord::Migration[5.2]
  def up  
       add_column :users, :blood_type_id, :integer, :null => false, :foreign_key => true, :index => true
  end
  
  def down
    remove_column :users, :blood_type_id
  end
end
