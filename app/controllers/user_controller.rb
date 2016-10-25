class UserController < ApplicationController

  def is_admin
    render json: {'isAdmin': params[:idToken] == ENV['ADMIN_GOOGLE_ID']}
  end

end
