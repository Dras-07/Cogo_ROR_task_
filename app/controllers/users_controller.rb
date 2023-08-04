class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: user
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  def profile
    # Ensure you have some form of user authentication (e.g., JWT) to get the current user
    user = current_user
    render json: user
  end

  def my_posts
    # Ensure you have some form of user authentication (e.g., JWT) to get the current user
    user = current_user
    posts = user.posts
    # Calculate stats: number of likes, number of comments, and views (if you have a view system)
    render json: posts, methods: [:likes_count, :comments_count, :views_count]
  end

  def follow
    # Implement logic to follow other authors
  end

  def other_author_profile
    # Implement logic to view other authors' profiles
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
