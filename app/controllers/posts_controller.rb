class PostsController < ApplicationController

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new
    @post.user_id = current_user.id
    @post.content = params[:content]
    @post.save
    redirect_to "/posts"
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

end
