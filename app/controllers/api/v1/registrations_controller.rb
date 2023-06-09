class Api::V1::RegistrationsController < Api::V1::BaseController
  def create
    user = User.new(user_params)
    if user.save
      api_key = user.valid_api_key
      set_access_token_to_response(api_key.access_token)
      json_string = UserSerializer.new(user).serialized_json
      render json: json_string
    else
      render_error(error_400_options, errors: user.errors.full_messages)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
