class HomesController < ApplicationController
  #allows for front page with all articles to show first before login
  skip_before_action :authenticate, only: [:index]

  def index
    @current_uri = request.env['PATH_INFO']
  end
end
