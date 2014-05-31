class FinishesController < ApplicationController
  def show
    @finish = Finish.find(params[:id])
  end

  def buy
    @finish = Finish.find(params[:id])
    @inventory = Inventory.create(snack_id: @finish.snack_id)
    @finish.destroy
    redirect_to root_path
  end

  def wish
    @finish = Finish.find(params[:id])
    @wish = Wish.create(snack_id: @finish.snack_id)
    @finish.destroy
    redirect_to root_path
  end
end
