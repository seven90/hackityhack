class StudentSessionsController < ApplicationController
  def index
       @student = Student.find(params[:id])
  end
  
  def new
  end

  def create
    student = Student.find_by_email(params[:email])
    if student && student.authenticate(params[:password])
      session[:student_id] = student.id
      redirect_to students_path, :notice => "Logged in!"
    else
      render "root_path" 
    end
      
  end

  def destroy
    session[:student_id] = nil
    redirect_to root_path :notice => "Logged out!"
  end

  def show
  end

  def view

  end

end

