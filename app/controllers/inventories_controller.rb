class InventoriesController < ApplicationController
  def new
    @form = InventoryForm.new(Snack.new)
  end

  def create
    @form = InventoryForm.new(Snack.new)
    if @form.validate(params[:inventory])
      @form.save
      Inventory.create(snack_id: @form.model.id)
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  def destroy
    @inventory = Inventory.find(params[:id])
    @finish = Finish.create(snack_id: @inventory.snack_id)
    @inventory.destroy
    redirect_to root_path
  end
end
