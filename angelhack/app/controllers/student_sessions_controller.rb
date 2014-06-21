class StudentSessionsController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    student = Student.find_by_email(params[:email])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to lessons_path, :notice => "Logged in!"
    else
      render "root_path" 
    end
      
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path :notice => "Logged out!"
  end
end

