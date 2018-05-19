module Api
  module V1
    class BloodDonationRequestsController < BaseController
      before_action :set_blood_donation_request, only: [:resolve_request, :cancel_request]
      # Home request that gets all requests that I can donate for
      def index
        blood_type_ids = @current_user.blood_types_to_donate_for
        matched_requests = BloodDonationRequest.where('user_id != ? and blood_type_id in (?) and city_id = ?', @current_user.id, blood_type_ids, @current_user.city_id)
        return render :json => {:blood_donation_request => matched_requests.map{|request| BloodDonationRequestSerializer.new(request, :root => false)}, meta: meta(SUCCESS_CODE, SUCCESS_ID)}, status: SUCCESS_CODE
      end

      def create
        request = BloodDonationRequest.new(blood_donation_request_params)
        request.user = @current_user
        request.city_id = @current_user.city_id
        return render json: { meta: meta(BAD_REQUEST_CODE, INVALID_PARAMETERS_ID) }, status: :bad_request unless request.save
        render json: { :blood_donation_request => BloodDonationRequestSerializer.new(request, :root => false),  meta: meta(SUCCESS_CODE, SUCCESS_ID) }
      end

      def my_requests
        requests = @current_user.blood_donation_requests
        return render :json => {blood_donation_requests: requests.map{|request| BloodDonationRequestSerializer.new(request, :root => false)}, meta: meta(SUCCESS_CODE, SUCCESS_ID)}, status: SUCCESS_CODE
      end

      def resolve_request
        @request.update_attributes(:state => 1) # 0 -> pending, 1 -> resolved, 2 -> cancelled
        render json: { :blood_donation_request => BloodDonationRequestSerializer.new(@request, :root => false),  meta: meta(SUCCESS_CODE, SUCCESS_ID) }
      end

      def cancel_request
        @request.update_attributes(:state => 2) # 0 -> pending, 1 -> resolved, 2 -> cancelled
        render json: { :blood_donation_request => BloodDonationRequestSerializer.new(@request, :root => false),  meta: meta(SUCCESS_CODE, SUCCESS_ID) }
      end

      def send_email_to_owner

      end

      private

      def blood_donation_request_params
        params.fetch(:blood_donation_request, {}).permit(:blood_type_id, :notes)
      end

      # find pending request
      def set_blood_donation_request
        @request = BloodDonationRequest.where(:id => params[:id], :state => 0).first
        return render json: { meta: meta(NOT_FOUND_CODE, RECORD_NOT_FOUND_ID) }, status: :not_found if @request.nil?
      end
    end
  end
end

