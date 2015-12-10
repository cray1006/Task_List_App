class ProtectedController < ApplicationController
  def require_login
    s = session[:user_id]
    
    if s == nil
      flash[:message] = "You are not logged in"
      redirect_to login_path
    end
  end
end
