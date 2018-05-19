module Api
  module V1
    class CitiesController < BaseController
      skip_before_action :authenticate_request, only: [:generate_all_cities]
      def index
        return render :json => {cities: City.all.map{|city| CitySerializer.new(city, :root => false)}, meta: meta(SUCCESS_CODE, SUCCESS_ID)}, status: SUCCESS_CODE
      end

      def generate_all_cities
        City.destroy_all
        City.create(:name => "Cairo")
        City.create(:name => "Giza")
        City.create(:name => "Alexandria")
        render json: { meta: meta(SUCCESS_CODE, SUCCESS_ID) }
      end

    end
  end
end