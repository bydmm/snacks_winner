class LikesController < ApplicationController
  def new
    @snack = Snack.find(params[:snack_id])
    like = Like.new(user: current_user, snack_id: @snack.id)
    if like.save
      render action: :like
    else
      like = Like.find_by(snack_id: @snack.id)
      like.destroy
      render action: :unlike
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
  end
end
