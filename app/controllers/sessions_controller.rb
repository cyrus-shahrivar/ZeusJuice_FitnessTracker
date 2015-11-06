class SessionsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create] #this needs to be attached to each controller
  def new
    @member = Member.new
  end

  def create
    user = Member.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
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
