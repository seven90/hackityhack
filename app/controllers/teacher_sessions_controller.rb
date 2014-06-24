class TeacherSessionsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id
      redirect_to new_lesson_path, :notice => "Logged in!"
    else
      render "new" 
    end
      
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to root_path :notice => "Logged out!"
  end
end

