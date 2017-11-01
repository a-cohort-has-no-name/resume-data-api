class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def aunthenticate_user!
    @current_user ||= Student.first(email: params[:email])
    if @current_user && @current_user.password_digest.is_password?(params[:password])
      return true
    else false
  end
  #helper_method :aunthenticate_user
end
