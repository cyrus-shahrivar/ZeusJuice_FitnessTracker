class ArticlesController < ApplicationController
  #allows for front page with all articles to show first before login
  skip_before_action :authenticate, only: [:index] 

  def index
    @articles = Article.all
    @tweets = Tweet.all
    @member = Member.new
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
    @member = Member.new
  end
  def create
    @article = Article.new article_params
    @article.save
    redirect_to articles_path
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@article)
  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :author, :body, :image_url)
  end
end
