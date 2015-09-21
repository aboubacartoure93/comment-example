class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def current_user
    session[:user_id] ? User.find(session[:user_id]) : nil
  end

  def authenticate_user!
    unless current_user
      redirect_to login_path, notice: "Please log in first."
    end
  end
end
