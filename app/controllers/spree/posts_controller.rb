module Spree
  class PostsController < BaseController

    def index
      @posts = Spree::Post.published.latest
    end

    def show
      @post = Spree::Post.find(params[:id])
    end

  end
end
