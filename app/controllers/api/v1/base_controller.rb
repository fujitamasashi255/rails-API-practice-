# frozen_string_literal: true

module Api
  module V1
    class BaseController < ApplicationController
      include ActionController::HttpAuthentication::Basic::ControllerMethods
      include ActionController::HttpAuthentication::Token::ControllerMethods

      def set_access_token_to_response(access_token)
        response.headers['AccessToken'] = access_token
      end

      def authenticate
        authenticate_or_request_with_http_token do |token, options|
          @_current_user = User.find_by_token token
        end
      end

      def current_user
        @_current_user
      end
    end
  end
end
