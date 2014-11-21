class CommentsController < ApplicationController
  def index
    @pitch = Pitch.find(params[:pitch_id])
    @comments = @pitch.comments
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments: 'index'
    else
      render :new
    end
  end

  def destroy
    @comment = Comment.find(params[:id]).destroy
    redirect_to root_path
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to pitches_path
  end

  private

  def comment_params
    params.require(:comment).permit([:content])
  end

end
