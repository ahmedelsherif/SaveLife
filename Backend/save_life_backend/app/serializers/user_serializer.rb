class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone_number, :auth_token
  has_one :city
  has_one :blood_type
  def initialize(objects, options={})
    super
    @options = options[:serializer_options] || {}
  end

  def auth_token
    @options[:show_auth_token]
  end
end
