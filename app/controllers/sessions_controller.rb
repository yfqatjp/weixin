class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.password_digest == params[:session][:password]
      if @user.expiredate > Date.today
        log_in @user
        redirect_to dacourseshow_url
      else
        flash.now[:danger] = '帐号已过期!'
        render 'new'
      end

    else
      flash.now[:danger] = '帐号或密码错误!'
      render 'new'
    end

  end

  def destroy
    log_out
    redirect_to root_url
  end

end
