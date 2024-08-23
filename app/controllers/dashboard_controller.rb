class DashboardController < ApplicationController
  before_action :require_login

  layout false

  def index
  end

  private

  def require_login
    unless logged_in?
      flash[:alert] = "Você precisa estar logado para acessar esta página."
      redirect_to login_path
    end
  end

  def logged_in?
    !!session[:user_id]
  end
end
