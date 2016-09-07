class CoursesController < ApplicationController
  def show
    @user = User.find_by(id: session[:user_id])
    @current_course = @user.courses.find_by(id: params[:course_now])
    # scheduler = Rufus::Scheduler.new
    # job = scheduler.schedule_every '10s' do
    #   if  @user.buytime == 35 && @user.playtime < @user.buytime*3600
    #     @user.playtime += 10
    #     @user.buytime = @user.buytime
    #     @user.save
    #   else
    #     job.kill
    #   end
    # end
  end

end