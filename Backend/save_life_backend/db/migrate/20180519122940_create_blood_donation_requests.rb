class CreateBloodDonationRequests < ActiveRecord::Migration[5.2]
  def up
    create_table :blood_donation_requests do |t|
      t.integer :user_id, index: true, foreign_key: true, :null => false
      t.integer :blood_type_id, index: true, foreign_key: true, :null => false
      t.string :notes, :null => false
      t.integer :city_id, index: true, foreign_key: true, :null => false
      t.timestamps
    end
  end

  def down
    drop_table :blood_donation_requests
  end
end
