class SessionsController < ApplicationController
  def new

  end

  def create
    session[:current_email] = params[:session][:email]
    redirect_to root_path
  end

  def destroy
    reset_session
    session[:current_email] = nil
    redirect_to new_session_path
  end

end
