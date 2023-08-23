class ArticlesController < ApplicationController

  def index
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    article = Article.new(article_params.merge(user: current_user))

    if article.save
        redirect_to root_path, notice: "Article was successfully created."
    end
  end

  private
   
    def article_params
      params.require(:article).permit(:title, :body, :image, :user_id, :category_id)
    end
end