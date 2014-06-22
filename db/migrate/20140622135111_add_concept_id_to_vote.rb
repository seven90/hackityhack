class AddConceptIdToVote < ActiveRecord::Migration
  def change
  	remove_column :votes, :bullet_id
  	add_column :votes, :concept_id, :integer
  end
end
