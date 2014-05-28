class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash[:warning] = 'Invalid email or password.'
      render 'new'
    end
  end

  def sign_out
    session[:user_id] = nil
    redirect_to root_url
  end
end
