class TeachersController < ApplicationController

def index
end
  
def new
  @teacher = Teacher.new
end

def create
  @teacher = Teacher.create(teacher_params)
  if @teacher.save
    redirect_to teachers_path, :notice => "Signed Up!"
  else 
    render :new 
  end
end

def show
  @lessons = Lesson.all
  @votes = Vote.all
end

private
def teacher_params
  params.require(:teacher).permit(:first_name, :last_name, :email, :password, :password_confirmation, :subject)
end

end

