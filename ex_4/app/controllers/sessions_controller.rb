class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      flash[:success] = "Login successful!"
      log_in user
      redirect_to '/'
    else
      flash[:danger] = 'Invalid email/password'
      render 'welcome/index'
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end
end
