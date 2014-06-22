class TeacherSessionsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    teacher = Teacher.find_by_email(params[:email])
    if teacher && teacher.authenticate(params[:password])
      session[:teacher_id] = teacher.id
      redirect_to lessons_path, :notice => "Logged in!"
    else
      render "root_path" 
    end
      
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to root_path :notice => "Logged out!"
  end
end

