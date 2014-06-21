class ConceptsController < ApplicationController
  def new
    @concept = Concept.new
  end

  private
  def concept_params
    params.require(:concept).permit(:bullet)
  end
end
