class ArticlesController < ApplicationController

  def create
    article = Article.new(article_params.merge(user: current_user))

    if article.save
        redirect_to root_path, notice: "Article was successfully created."
    end
  end

  private
   
    def article_params
      params.require(:article).permit(:title, :body, :user_id)
    end
end