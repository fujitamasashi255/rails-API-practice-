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

      def render_400(error)
        render_error(error_400_options, errors: error.message)
      end

      def render_404(error)
        render_error(error_404_options, errors: error.message)
      end

      def render_500(error)
        render_error(error_500_options, errors: error.message)
      end

      def render_error(error_options, errors:)
        response = {
          message: error_options[:message],
          errors: Array(errors)
        }

        render json: response, status: error_options[:status]
      end

      def error_400_options
        { message: 'Bad Request', status: 400 }
      end

      def error_404_options
        { message: 'Record Not Found', status: 404 }
      end

      def error_500_options
        { message: 'Internal Server Error', status: 500 }
      end
    end
  end
end
