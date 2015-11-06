class TweetsController < ApplicationController
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
    @tweet.save
    redirect_to tweets_path
  end
  def edit
    @tweet = Tweet.find(params[:id])
  end
  def update
    @tweet = Tweet.find(params[:id])
    @tweet.update(tweet_params)

    redirect_to tweet_path(@tweet)
  end
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to tweets_path(@tweet)
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :author, :body)
  end
end
