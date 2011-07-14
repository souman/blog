class PostsController < ApplicationController
skip_before_filter :authorize, :only => [:show]
## GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])
    @comment = Comment.where(:post_id => 2)
    puts @comment.class
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post, :notice => 'Post was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.name == session[:user_name]
        if @post.update_attributes(params[:post])
          format.html { redirect_to(@post, :notice => 'Post was successfully updated.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
        end
      end
     end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    if @post.name == session[:user_name]
      @post.destroy
    end

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end

  def latestupdate
     @posts=Post.all
     for post in @posts
      @name=post.name
     end
  end

  def get_comments
    @post = Post.find(params[:id])
    @comment = Post.Comment.find(params[:comment])
  end

end
