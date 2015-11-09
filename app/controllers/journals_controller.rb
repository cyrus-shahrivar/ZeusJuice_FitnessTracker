class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end
  def show
    @journal = Journal.find(params[:id])
  end
  def new
    @journal = Journal.new
  end
  def create
    @journal = Journal.new journal_params
    #assigns current_user id to member_id foreign key in journal
    @journal.member_id = @current_user.id
    @journal.save
    redirect_to member_path(@current_user)
  end
  def edit
    @journal = Journal.find(params[:id])
  end
  def update
    @journal = Journal.find(params[:id])
    @journal.update(journal_params)
    redirect_to member_path(@current_user)
  end

  private
  def journal_params
    params.require(:journal).permit(:entry)
  end
end
