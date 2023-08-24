class VotesController < ApplicationController

  def create
    @vote = current_user.votes.new(vote_params)

    if !@vote.save
      flash[:notice] =  @vote.errors.full_messages.to_sentence
    end

    redirect_to @vote.article, notice: 'Upvoted'
  end

  def destroy
    @vote = current_user.votes.find(params[:id])
    article = @vote.article
    @vote.destroy
    redirect_to article, notice: 'Downvoted'
  end

  private

  def vote_params
    params.require(:vote).permit(:article_id)
  end
end