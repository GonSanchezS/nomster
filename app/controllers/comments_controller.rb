class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @place = Place.find(params[:place_id])
    render json: @place.comments
  end

  def create
    @place = Place.find(params[:place_id])
    @comment = @place.comments.create(comment_params.merge(user: current_user))
    render json: @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end

end
