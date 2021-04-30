class CommentsController < ApplicationController
  before_action :set_post

  def index
    render partial: 'posts/comments', locals: { post: @post, comments: @post.comments }
  end

  def create
    @comment = @post.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: "コメントしました" }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])

    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: "コメントを削除しました" }
      format.json { head :no_content }
    end
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
