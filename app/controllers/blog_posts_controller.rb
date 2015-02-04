class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
      blog_post = BlogPost.new(blog_post_params)
      blog_post.save


      redirect_to root_path
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :author, :content)
  end
end
