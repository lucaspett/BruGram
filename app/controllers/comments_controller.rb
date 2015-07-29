class CommentsController < ApplicationController
  def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params.merge(user: current_user))

    redirect_to photo_path(@photo)
  end

  def destroy
    @comment = Comment.find(params[:id])

    if @comment.user != current_user
      redirect_to photo_path(@comment.photo), alert: "You cannot access this comment!"
    else
      @comment.destroy  
      redirect_to photo_path(@comment.photo)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body, :photo_id)
    end
end
