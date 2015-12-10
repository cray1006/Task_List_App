class HomeController < ProtectedController
  def index
    user = User.find_by(id:  session[:user_id])
    if user
      @user_tasks = user.tasks
    else
      flash[:message] = "User not logged in"
      redirect_to login_path
    end 
  end
end
