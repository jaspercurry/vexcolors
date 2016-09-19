module Api
  module V1
    class FlagsController < ActionController::API
      def index
        render json: Flag.all
      end

      def show
      end
    end
  end
end
