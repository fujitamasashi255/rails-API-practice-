# frozen_string_literal: true

module Api
  module V1
    module ErrorHandling
      extend ActiveSupport::Concern

      included do
        rescue_from StandardError, with: :render_500
        rescue_from ActiveRecord::RecordNotFound, with: :render_404
      end

      private

      def render_404(e)
        render_error(message: 'Record Not Found', status: 404, exception: e.message)
      end

      def render_500(e)
        render_error(message: 'Internal Server Error', status: 500, exception: e.message)
      end

      def render_error(message:, status:, **exceptions)
        response = {
          message: message,
          exception: exceptions.values
        }

        render json: response, status: status
      end
    end
  end
end
