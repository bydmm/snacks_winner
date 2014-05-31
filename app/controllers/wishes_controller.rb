class WishesController < ApplicationController
  def new
    @form = WishForm.new(Snack.new)
  end

  def create
    @form = WishForm.new(Snack.new)
    if @form.validate(params[:wish])
      @form.save
      Wish.create(snack_id: @form.model.id)
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  def show
    @wish = Wish.find(params[:id])
  end

  def buy
    @wish = Wish.find(params[:id])
    @inventory = Inventory.create(snack_id: @wish.snack_id)
    @wish.destroy
    redirect_to root_path
  end
end
