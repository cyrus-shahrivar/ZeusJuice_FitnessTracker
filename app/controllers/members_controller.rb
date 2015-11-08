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
  def edit
    @member = Member.find(params[:id])
  end
  def update
    @member = Member.find(params[:id])
    @member.update(member_params)

    redirect_to member_path(@member)
  end

  private

  def member_params
    params.require(:member).permit(:username, :calorie_intake, :minutes_exercised, :journal_num_entries, :password, :password_confirmation)

  end

end
