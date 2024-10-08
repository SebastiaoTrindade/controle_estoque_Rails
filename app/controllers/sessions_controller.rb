class SessionsController < ApplicationController
  def new
  end

  def create      
    user = Usuario.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in(user)      
      redirect_to dashboard_path
    else
      flash.now[:danger] = "Email ou senha inválidos!"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
end
