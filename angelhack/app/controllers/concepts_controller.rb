class ConceptsController < ApplicationController
  def new
    @concept = Concept.new
  end

  def index
    @concepts = Concept.find(params[:id])
  end
  
  def show
    @concepts = Concept.all
  end  

  def vote
      @concept = Concept.find_by(params[:id])
      @vote = Vote.create(concept_id: @concept.id)
      redirect_to root_path
  end

  private
  def concept_params
    params.require(:concept).permit(:bullet)
  end
end
