class CoursesController < ApplicationController
  def show
    @user = User.find_by(id: session[:user_id])
    @current_course = @user.courses.find_by(id: params[:course_now])

    session[:course_time] = Time.now
    @user.save


  #   scheduler = Rufus::Scheduler.new
  #   job = scheduler.schedule_every '1m' do
  #     if  request.original_url.length >= 45 && @user.playtime < @user.buytime*3600
  #       @user.playtime += 60
  #       @user.save
  #     else
  #       job.kill
  #     end
  #   end
   end

end

