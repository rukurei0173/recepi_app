class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
  #  @post = Post.new(content: params[:content])
    @post = Post.new(post_params)
    #if params[:image]
      #@post.image_name = "#{@post.id}.jpg"
      #File.binwrite("public/post_images/#{@post.image_name}", image.read)
  #  end

    if @post.save
      flash[:notice] = "投稿完了"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if params[:image_name]
      @post.image_name = params[:image_name]
    elsif params[:remove_image]
      @post.image_name = nil
    end

  #  if params[:image]
    #  @post.image_name = "#{@post.id}.jpg"
    #  image = params[:image]
    #  File.binwrite("public/uploads/post/image_name/#{@post.id}/#{@post.id}.jpg", image.read)
  #  end

    if @post.save
      flash[:notice] = "編集完了"
     redirect_to("/posts/index")
    else
     render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "削除完了"
    redirect_to("/posts/index")
  end

private
  def post_params
    params.permit(:content, :image_name)
  end

  def post_update_params
    params.permit(:content, :image_name, :image_cache, :remove_image)
  end
end
