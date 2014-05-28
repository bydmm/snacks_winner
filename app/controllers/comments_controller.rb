class CommentsController < ApplicationController
  def create
    @form = CommentForm.new(Comment.new)
    if @form.validate(params[:comment])
      @form.model.user = current_user
      @form.save
      render action: :success
    else
      render action: :error
    end
  end
end
