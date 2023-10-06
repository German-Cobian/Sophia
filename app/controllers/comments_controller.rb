class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @comments = Comment.all.order('created_at DESC')
  end

  def create
    @comment = Comment.new(comment_params.merge(commenter: current_user))
    @comment.article_id = params[:article_id]
    if @comment.save
      flash.now[:success] = 'Comment was successfully created.'
      redirect_to article_path(params[:article_id])

    else
      redirect_to article_path(params[:article_id]), alert: @comment.errors.full_messages.join('. ').to_s
    end
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def update
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

    if @comment.update(comment_params)
      redirect_to article_path(params[:article_id]), notice: 'Comment was updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(params[:article_id]), notice: 'Comment was successfully destroyed.'
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :article_id, :user_id, :parent_id)
  end
end
