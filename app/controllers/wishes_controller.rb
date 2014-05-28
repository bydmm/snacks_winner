class WishesController < ApplicationController
  def new
    @form = WishForm.new(Snack.new)
  end

  def create
    @form = WishForm.new(Snack.new)
    if @form.validate(params[:wish])
      @form.model.wish = true
      @form.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end
end
