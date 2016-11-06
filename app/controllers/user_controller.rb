class UserController < ApplicationController

  def is_admin
    resp = HTTParty.get(
      'https://www.googleapis.com/oauth2/v3/tokeninfo',
      query: {'id_token': params[:idToken]})

    if resp.code != 200
      render json: {isAdmin: false}
      return
    end
    data = JSON.parse(resp.body)
    render json: {isAdmin: data['sub'] == ENV['ADMIN_GOOGLE_ID']}
  end

end
