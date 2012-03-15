class Spree::Admin::PostsController < Spree::Admin::ResourceController

  def index
    @posts = Spree::Post.all
  end

  def show
    @post = Spree::Post.find(params[:id])
  end

  def new
    @post = Spree::Post.new
  end

  def create
    @post = Spree::Post.new(params[:post])
    if @post.save
      flash[:notice] = "Post saved successfully"
      redirect_to admin_posts_path
    else
      flash[:alert] = "There was an error saving your post"
      redirect_to :back
    end
  end

  def edit
    @post = Spree::Post.find(params[:id])
  end

  def update
    @post = Spree::Post.find(params[:id])
    if @post.update_attributes(params[:post])
      flash[:notice] = "Post saved successfully"
      redirect_to admin_posts_path
    else
      flash[:alert] = "There was an error saving your post"
      redirect_to :back
    end
  end

  def destroy
    @post = Spree::Post.find(params[:id])
    if @post.destroy
      redirect_to admin_posts_path
    else
      redirect_to :back
    end
  end

end
