class CoursesController < ApplicationController
  def show
    @user = User.find_by(id: session[:user_id])
    @current_course = @user.courses.find_by(id: params[:course_now])
  end
end
