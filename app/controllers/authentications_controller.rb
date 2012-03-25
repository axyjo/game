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
    auth = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if auth
      session[:user_id] = auth.user_id
      redirect_to "/"
    elsif current_user
      current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'])
    else
      u = User.create(:email => omniauth['info']['email'])
      if u.save
        session[:user_id] = u.id
      else
        flash[:notice] = "An account with your email address already exists. Please log in first."
      end
      redirect_to "/"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_url
  end
end
