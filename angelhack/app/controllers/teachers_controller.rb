class TeachersController < ApplicationController

def index
end
  
def new
  @teacher = Teacher.new
end

def create
  @teacher = Teacher.create(teacher_params)
  if @teacher 
    redirect_to teachers_path, :notice => "Signed Up!"
  else 
    render :new
  end
end

private
def teacher_params
  params.require(:teacher).permit(:first_name, :last_name, :email, :password, :password_confirmation, :subject)
end

end

