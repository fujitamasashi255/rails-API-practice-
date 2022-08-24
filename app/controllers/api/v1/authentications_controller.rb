class Api::V1::AuthenticationsController < Api::V1::BaseController
  def create
    user = login(params[:email], params[:password])
    if user
      json_string = UserSerializer.new(user).serialized_json
      render json: json_string
    else
      raise ActiveRecord::RecordNotFound
    end
  end
end
