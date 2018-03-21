class AddClubTypeIdToTeams < ActiveRecord::Migration[5.1]
  def change
  	add_column :teams, :club_type_id, :integer
  	add_index :teams, :club_type_id
  end
end
