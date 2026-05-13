class PostsController < RageController::API
  def index
    render json: Post.order(created_at: :desc).all
  end
end
