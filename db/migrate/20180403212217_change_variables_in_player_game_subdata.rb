class ChangeVariablesInPlayerGameSubdata < ActiveRecord::Migration[5.1]
  def change
  	rename_column :player_game_subdata, :attemptedFirstTouches, :turnovers
  	rename_column :player_game_subdata, :successfulFirstTouches, :offsides
  	rename_column :player_game_subdata, :interventions, :recoveries
  	rename_column :player_game_subdata, :blocks, :blockedShots
  end
end
