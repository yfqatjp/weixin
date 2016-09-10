class XiaoCoursesController < ApplicationController
  def show
    @user = User.find_by(id: session[:user_id])
    @current_dacourse = @user.da_courses.find_by(id: params[:dacourseid])

  end
end
