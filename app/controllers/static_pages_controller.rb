class StaticPagesController < ApplicationController
  before_action :logged_in_user

  def home
  end

  def about
  end

  def login

  end

  def logged_in_user



    unless logged_in?
      flash[:danger] = "请登录."
      redirect_to login_url
    else
      redirect_to current_user
    end
  end

end
