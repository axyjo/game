class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end

  def destroy
    self.current_user = nil
    redirect_to '/'
  end

  def auth_hash
    request.env['omniauth.auth']
  end

end
