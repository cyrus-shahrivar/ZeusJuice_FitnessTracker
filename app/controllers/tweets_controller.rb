class TweetsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]
  def index
    @tweets = Tweet.all
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = Tweet.new tweet_params
    @tweet.member_id = Member.find_by(username: @tweet.author).id

    @tweet.save
    redirect_to root_path
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)

    redirect_to root_path
  end
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to root_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:author, :body)
  end
end
