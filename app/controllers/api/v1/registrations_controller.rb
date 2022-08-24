class Api::V1::RegistrationsController < Api::V1::BaseController
  def create
    user = User.create!(user_params)
    json_string = UserSerializer.new(user).serialized_json
    render json: json_string
  end

  def user_params
    params.permit(:name, :email, :password)
  end
end
