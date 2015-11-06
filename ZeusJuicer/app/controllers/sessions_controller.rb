class SessionsController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    user = Member.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to 'sessions'
    else
      flash.now[:danger] = "Invalid username/password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
