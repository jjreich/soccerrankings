class AddPlayerAndGameIdsToPlayerGameSubdata < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_game_subdata, :player_id, :integer
  	add_index :player_game_subdata, :player_id
  	add_column :player_game_subdata, :game_id, :integer
  	add_index :player_game_subdata, :game_id
  end
end
