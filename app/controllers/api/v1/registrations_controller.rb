class Api::V1::RegistrationsController < Api::V1::BaseController
  def create
    user = User.new(user_params)
    if user.save
      json_string = UserSerializer.new(user).serialized_json
      render json: json_string
    else
      render_error(message: 'Bad Request', status: 400, errors: user.errors.full_messages)
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
