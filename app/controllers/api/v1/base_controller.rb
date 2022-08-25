# frozen_string_literal: true

module Api
  module V1
    class BaseController < ApplicationController
      include Api::V1::ErrorHandling

      def set_access_token_to_response(access_token)
        response.headers['AccessToken'] = access_token
      end
    end
  end
end
