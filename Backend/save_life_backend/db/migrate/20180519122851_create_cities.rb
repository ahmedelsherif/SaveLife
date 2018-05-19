class CreateCities < ActiveRecord::Migration[5.2]
  def up
    create_table :cities do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end
  
  def down
    drop_table :cities
  end
end
