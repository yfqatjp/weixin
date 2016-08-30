class CoursesController < ApplicationController
  def show
    @user = User.find_by(id: session[:user_id])
    @current_course = @user.courses.find_by(id: params[:course_now])
    tttime = @user.buytime*3600 - @user.playtime;
    s = Rufus::Scheduler.singleton
    s.every '1m' do
      @user.playtime += 60
      @user.save
    end
  end
end
