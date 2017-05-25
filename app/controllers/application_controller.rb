class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :signed_in?

  def authenticate
    unless signed_in?
      redirect_to new_session_path
    end
  end

  def signed_in?
    session[:current_email].present?
  end
end
