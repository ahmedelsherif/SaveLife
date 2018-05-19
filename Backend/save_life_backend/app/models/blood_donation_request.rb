class BloodDonationRequest < ActiveRecord::Base
  belongs_to :user
  belongs_to :blood_type
  belongs_to :city
end

