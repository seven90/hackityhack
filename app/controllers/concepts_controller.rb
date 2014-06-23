class ConceptsController < ApplicationController
  def new
    @concept = Concept.new
  end

  def index
    @concept = Concept.find(params[:id])
  end
  
  def show
    @lesson = Lesson.find(params[:id])
    @concepts = Concept.all
    @votes = Vote.all
  end  

  def vote
      @concept = Concept.find(params[:id])
      @vote = Vote.create(concept_id: @concept.id)
      @votes = Vote.all
      redirect_to :back
  end

  private
  def concept_params
    params.require(:concept).permit(:bullet)
  end
end
