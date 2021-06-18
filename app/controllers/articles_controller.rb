class ArticlesController < ApplicationController
  def show
    # Instance variable so it's available in the views
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = "Article was created succesfully!"
      # this is the full code, but we're going to use the shorthand version
      # redirect_to article_path(@article)
      redirect_to @article
    else
      render "new"
    end
  end

  # Strong Typing: this method filters params (allowed list)
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end


end