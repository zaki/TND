class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']

    unless @auth = Authorization.find_from_hash(auth)
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    self.current_user = @auth.user

    redirect_to root_path, :notice=>"Logged in successfully #{current_user.name}. You are at #{current_user.location || 'unknown' }"
  end

  def destroy
    logout!()
    redirect_to root_path
  end
end
