class MembersController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]
  def login
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new member_params
    @member.save
    redirect_to articles_path
  end

  private

  def member_params
    params.require(:member).permit(:username, :password, :password_confirmation)

  end

end
