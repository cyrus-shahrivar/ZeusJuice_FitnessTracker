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
    redirect_to root_path
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
    params.require(:member).permit(:username, :calorie_intake,:calorie_intake_goal, :minutes_exercised,:minutes_exercised_goal, :password, :password_confirmation,
    :steps,:steps_goal, :miles,:miles_goal, :calories_burned,:calories_burned_goal, :weight,:weight_goal, :sleep,:sleep_goal, :blood_sugar,:blood_sugar_goal)
  end

end
