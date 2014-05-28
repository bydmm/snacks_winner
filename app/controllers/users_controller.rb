class UsersController < ApplicationController
  def new
    @form = UserForm.new(User.new)
  end

  def create
    @form = UserForm.new(User.new)
    if @form.validate(params[:user])
      @form.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end
end
