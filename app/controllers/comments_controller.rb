class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_url(comment_params[:post_id]), notice: 'Comment added'
    else
      redirect_to post_url(comment_params[:post_id]), alert: 'Something went wrong'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:commentator_name, :content, :post_id)
  end

end
