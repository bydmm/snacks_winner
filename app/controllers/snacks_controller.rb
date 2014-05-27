class SnacksController < ApplicationController
  def new
    @form = SnackForm.new(Snack.new)
  end

  def create
    @form = SnackForm.new(Snack.new)
    if @form.validate(params[:snack])
      @form.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  def edit
    @form = SnackForm.new(Snack.find(params[:id]))
  end

  def update
    @form = SnackForm.new(Snack.find(params[:id]))
    if @form.validate(params[:snack])
      @form.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  def show
    @snack = Snack.find(params[:id])
  end

  def destroy
    @snack = Snack.find(params[:id])
    @snack.destroy
    redirect_to root_path
  end
end
