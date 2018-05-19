class User < ActiveRecord::Base
  has_secure_password
  validates :name, :email, :password, :phone_number, :presence => {message: "#{MISSING_PARAMETERS_ID}"} , :on => :create
  validates :password_confirmation,  :presence =>   {message: "#{MISSING_PARAMETERS_ID}"}, if: -> {!password.nil?}
  validates :password, :confirmation => { message: "#{PASSWORD_AND_CONFIRMATION_NOT_EQUAL_ID}" }
  validates :email, uniqueness: { case_sensitive: false,  message: "#{EMAIL_TAKEN_ID}" }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, :message => "#{INVALID_EMAIL_FORMAT_ID}"
  validates :password, length: { minimum: 8 , message: "#{PASSWORD_LESS_THAN_MINIMUM_LENGTH_ID}"}, if: -> {!password.nil?}
  validates :email, length: { maximum: 500 , message: "#{EMAIL_LENGTH_EXCEEDED_MAX_ID}"}
  validates :name, length: { in: 3..20, :message => "#{NAME_LENGTH_NOT_WITHIN_LIMITS_ID}" }

  has_one :city
  has_one :blood_type
  def city
    return City.where(:id => city_id).first
  end

  def blood_type
    return BloodType.where(:id => blood_type_id).first
  end

  def blood_donation_requests
    return BloodDonationRequest.where(:user_id => id, :state => 0)
  end

  def blood_types_to_donate_for
    case blood_type_id
    when 1 # A+
      then return [1,5] # A+, AB+
    when 2 # A-
       then return [1,2, 5, 6] # A+, A-, AB+, AB-
    when 3 #B+
      then return [3, 5] #B+, AB+
    when 4 # B-
      then return [3, 4, 5, 6] # B+, B-, AB+, AB-
    when 5 # AB+
      then return [5] # AB+
    when 6 # AB- 
      then return [5, 6] #AB+, AB-
    when 7 # O+ 
      then return [1, 3, 5, 7] # A+, B+, AB+, O+
    when 8 # O- 
      then return [1, 2, 3, 4, 5, 6, 7, 8] # A+, A-, B+, B-, AB+, AB-, O+, O-
    end
    nil
  end
end