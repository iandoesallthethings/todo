class SessionsController < ApplicationController
  def new

  end

  def create
    sign_in_as params[:session][:email]
    redirect_to root_path
  end

  def destroy
    reset_session
    sign_in_as = nil
    redirect_to new_session_path
  end
end
