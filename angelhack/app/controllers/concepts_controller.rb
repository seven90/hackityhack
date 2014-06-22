class ConceptsController < ApplicationController
  def new
    @concept = Concept.new
  end

  def index
    @concepts = Concept.find(params[:id]).bullet
  end
  
  def show
    @concepts = Concept.find(params[:id])
  end  

  private
  def concept_params
    params.require(:concept).permit(:bullet)
  end
end
