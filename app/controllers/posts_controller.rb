class PostsController < ApplicationController
  before_action :authorize, only: %i[new create destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)

    if @post.save
      redirect_to posts_path, notice: 'Created successfully'
    else
      render :new, notice: 'Failed to create'
    end
  end

  private

  def post_params
    params.require(:post).permit(:text)
  end
end
