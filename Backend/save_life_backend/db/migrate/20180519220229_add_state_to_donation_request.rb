class AddStateToDonationRequest < ActiveRecord::Migration[5.2]
  def up
    add_column :blood_donation_requests, :state, :integer, :default => 0
  end

  def down
    remove_column :blood_donation_requests, :state
  end
end
