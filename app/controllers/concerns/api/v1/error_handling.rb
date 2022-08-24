# frozen_string_literal: true

module Api
  module V1
    module ErrorHandling
      extend ActiveSupport::Concern

      included do
        rescue_from StandardError, with: :render_500
        rescue_from ActiveRecord::RecordNotFound, with: :render_404
        rescue_from ActiveRecord::RecordInvalid, with: :render_400
      end

      private

      def render_400(error)
        render_error(message: 'Record Not Registered', status: 400, error: error.message)
      end

      def render_404(error)
        render_error(message: 'Record Not Found', status: 404, error: error.message)
      end

      def render_500(error)
        render_error(message: 'Internal Server Error', status: 500, error: error.message)
      end

      def render_error(message:, status:, **errors)
        response = {
          message: message,
          errors: errors.values
        }

        render json: response, status: status
      end
    end
  end
end
