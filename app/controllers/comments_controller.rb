class CommentsController < ApplicationController
 # before_filter :authenticate
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])
    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end

  def newone
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])
    @parentcomment = @post.comments.find(params[:parent_id])
    @parent = params[:parent_id]
  end

  def show
    @post = Post.find(params[:post_id])
    @comment = Post.Comment.find(params[:comment])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end


end
