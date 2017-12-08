class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    @article.save
    redirect_to articles_path, notice: "Article created"
  end

  def index
    @articles = Article.all
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
