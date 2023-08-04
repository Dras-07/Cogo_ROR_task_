class CommentsController < ApplicationController
  
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.build(comment_params)
    if comment.save
      render json: post, status: :created
    else
      render json: { errors: comment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
