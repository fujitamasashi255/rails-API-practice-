class Api::V1::AuthenticationsController < Api::V1::BaseController
  def create
    user = login(params[:email], params[:password])
    raise ActiveRecord::RecordNotFound unless user

    api_key = user.valid_api_key
    set_access_token_to_response(api_key.access_token)
    json_string = UserSerializer.new(user).serialized_json
    render json: json_string
  end

  private

  def form_authenticity_token; end
end
