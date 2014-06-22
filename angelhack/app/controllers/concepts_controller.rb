class ConceptsController < ApplicationController
  def new
    @concept = Concept.new
  end

  def index
    @concepts = Concept.find(params[:id])
  end
  
  def show
    @concepts = Concept.all
    @lesson = Lesson.last
    @vote = Vote.last
  end  

  def vote
      @concept = Concept.find_by(params[:id])
      @vote = Vote.create(concept_id: @concept.id)
      @votes = Vote.all
      redirect_to concept_path(@concept)
  end

  private
  def concept_params
    params.require(:concept).permit(:bullet)
  end
end
