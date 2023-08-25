class ArticlesController < ApplicationController
  def index; end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    article = Article.new(article_params.merge(user: current_user))

    return unless article.save

    redirect_to root_path, notice: 'Article was successfully created.'
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id, :category_id)
  end
end
