class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def new
    @lesson = Lesson.new
  end

  def show
    @lesson = Lesson.find_by(date: params[:date])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson.date)
    else
      render :new
    end
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update_attributes(lesson_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit!
  end
end
