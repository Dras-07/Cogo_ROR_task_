class LikesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    like = post.likes.build
    if like.save
      render json: post, status: :created
    else
      render json: { errors: like.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
