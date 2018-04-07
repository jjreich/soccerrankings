class AddDataToPlayerGameSubdata < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_game_subdata, :highCatches, :integer, default: 0
  	add_column :player_game_subdata, :goalsAgainst, :integer, default: 0
  	add_column :player_game_subdata, :started, :boolean, default: false
  	add_column :player_game_subdata, :available, :boolean, default: false
  end
end
