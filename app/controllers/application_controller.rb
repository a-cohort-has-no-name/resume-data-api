class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_user!
    @current_user = Student.find_by(email: params[:email])
    if @current_user && @current_user.password_digest == params[:password]
    else 
      head(403)
    end
  end
  #helper_method :aunthenticate_user
end
