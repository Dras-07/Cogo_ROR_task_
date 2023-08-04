class PostsController < ApplicationController
  def index
    @posts = Post.includes(:comments, :likes) # This eager loads comments and likes for performance
    render json: @posts, include: { comments: {}, likes: {} }
  end



  def show
    @post = Post.find(params[:id])
    render json: @post, include: :likes
  end

  # def show
  #   post = Post.find(params[:id])
  #   render json: post
  # end

  def create
    post = Post.new(post_params)

    if post.save
      render json: post, status: :created
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    post = Post.find(params[:id])

    if post.update(post_params)
      render json: post
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    head :no_content
  end

  def filter
    # Implement filtering logic based on params (author, date, likes, comments)
    # Sample implementation:
    posts = Post.all
    posts = posts.where(author: params[:author]) if params[:author].present?
    posts = posts.where(published_at: params[:date]) if params[:date].present?
    # ... Implement filtering based on likes and comments as needed ...
    render json: posts
  end

  def search
    # Implement search logic based on params (post, author, topic)
    # Sample implementation:
    query = params[:query].downcase
    posts = Post.where('lower(title) LIKE ? OR lower(author) LIKE ? OR lower(topic) LIKE ?', "%#{query}%", "%#{query}%", "%#{query}%")
    render json: posts
  end

  private

  def post_params
    params.require(:post).permit(:title, :topic, :featured_image, :text, :published_at, :author)
  end
end
