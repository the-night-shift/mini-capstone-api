class ApplicationController < ActionController::API
  include Knock::Authenticable

  def authenticate_admin
    if current_user && current_user.admin
      # continue on
    else
      render json: {message: "You can't do that"}, status: :unauthorized
    end
  end
end
