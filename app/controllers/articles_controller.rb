class ArticlesController < ApplicationController
  def show
    # Instance variable so it's available in the views
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
  end

  def create
  end

end