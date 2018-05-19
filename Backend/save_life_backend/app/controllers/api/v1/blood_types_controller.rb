module Api
  module V1
    class BloodTypesController < BaseController
      skip_before_action :authenticate_request, only: [:generate_all_blood_types]
      def index
        return render :json => {blood_types: BloodType.all.map{|blood_type| BloodTypeSerializer.new(blood_type, :root => false)}, meta: meta(SUCCESS_CODE, SUCCESS_ID)}, status: SUCCESS_CODE
      end

      def generate_all_blood_types
        BloodType.destroy_all
        BloodType.create(:name => "A+")
        BloodType.create(:name => "A-")
        BloodType.create(:name => "B+")
        BloodType.create(:name => "B-")
        BloodType.create(:name => "AB+")
        BloodType.create(:name => "AB-")
        BloodType.create(:name => "O+")
        BloodType.create(:name => "O-")
        render json: { meta: meta(SUCCESS_CODE, SUCCESS_ID) }
      end

    end
  end
end

