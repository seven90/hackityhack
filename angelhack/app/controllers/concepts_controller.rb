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

  private
  def concept_params
    params.require(:concept).permit(:bullet)
  end
end
