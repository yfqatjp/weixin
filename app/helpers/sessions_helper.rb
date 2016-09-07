module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id

    # 每周日更新系统
    scheduler = Rufus::Scheduler.new
    job = scheduler.schedule_every '1d' do
      User.update_all(playtime: 0)
      User.update_all(buytime: 35)
    end

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
    session.delete(:user_id)
    @current_user = nil
  end


end
