class BloodDonationRequestSerializer < ActiveModel::Serializer
  attributes :id, :state, :notes
  belongs_to :user
  belongs_to :blood_type
  belongs_to :city
end
