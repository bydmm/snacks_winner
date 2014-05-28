class CommentsController < ApplicationController
  def create
    @form = CommentForm.new(Comment.new)
    if @form.validate(params[:comment])
      @form.model.user = current_user
      @form.save
    end
    redirect_to :back
  end
end
