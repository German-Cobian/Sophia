class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: %i[create edit update destroy]

  def index
    @q = Article.ransack(params[:q])
    @articles = @q.result(distinct: true)
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    article = Article.new(article_params.merge(creator: current_user))

    return unless article.save

    redirect_to root_path, notice: 'Article was successfully created.'
  end

  def edit
    @article = current_user.articles.find(params[:id])
  end

  def update
    @article = current_user.articles.find(params[:id])

    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article = current_user.articles.find(params[:id])
    @article.destroy
    redirect_to categories_path, notice: 'Article was destroyed.'
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :image, :user_id, :category_id)
  end
end
