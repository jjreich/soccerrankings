class AddTeamIdToPlayerGameSubdata < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_game_subdata, :team_id, :integer
  	add_index :player_game_subdata, :team_id
  end
end
