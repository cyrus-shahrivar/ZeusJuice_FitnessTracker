module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = @current_user || Member.find_by(id: session[:user_id])
  end

  # def require_user
  #   redirect_to '/login' unless current_user
  # end

  def logged_in
  #  not nil = true; there is a current user?
   !current_user.nil?
  end

  def log_out
   session.delete :user_id
   @current_user = nil
  end
end
