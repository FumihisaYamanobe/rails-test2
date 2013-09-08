class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def update
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private
  def blog_params
    params[:blog].permit(:titile, :contents, :tag)
  end
end
