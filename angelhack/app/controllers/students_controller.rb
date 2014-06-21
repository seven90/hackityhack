class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student
      redirect_to students_path, :notice => "Signed Up!"
    else 
      render :new
    end
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :email, :password, :password_confirmation, :period_1, :period_2, :period_3, :period_4, :period_5, :afterschool)
  end
  
end