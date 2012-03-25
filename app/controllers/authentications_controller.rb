class AuthenticationsController < ApplicationController
  respond_to :json
  def index
    if current_user
      respond_with current_user.authentications.all
    else
      respond_with []
    end
  end

  def create
    omniauth = request.env["omniauth.auth"]
    auth = Authentication.find_by_provider_and_uid(omniauth['provider'], auth['uid'])
    if auth
      session[:user_id] = auth.user_id
      redirect_to "/"
    elsif current_user
      current_user.authentications.create(:provider => auth['provider'], :uid => auth['uid'])
    else
      u = User.create(:email => auth['info']['email'])
      if u.save
        session[:user_id] = u.id
        redirect_to "/"
      end
    end
  end
end
