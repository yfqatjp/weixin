module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
    session[:login_time] = Time.now
    @user = User.find_by(id: session[:user_id])
    @user.logout = false
    @user.save
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def is_admin?
    if logged_in?
      current_user.admin == true
    end
  end

  def log_out
    @user = User.find_by(id: session[:user_id])
    @user.logout = true
    t1 = Time.parse(session[:login_time])
    t2 = Time.now
    @user.playtime = @user.playtime + (t2 - t1).round(0)
    @user.save
    session.delete(:user_id)
    @current_user = nil
  end


end
