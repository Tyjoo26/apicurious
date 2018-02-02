class SessionsController < ApplicationController

  def create
    user = User.update_or_create(request.env["omniauth.auth"])
    session[:id] = user.id

    redirect_to dashboard_index_path
  end



end
