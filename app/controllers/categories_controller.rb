class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def index
    Category.all
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
    end
  end

  private

  def category_params
    params.require(:category).permit(:topic)
  end
end
