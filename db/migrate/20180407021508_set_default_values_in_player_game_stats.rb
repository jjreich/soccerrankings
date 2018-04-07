class SetDefaultValuesInPlayerGameStats < ActiveRecord::Migration[5.1]
  def change
  	change_column :player_game_subdata, :attemptedPasses, :float, default: 0
  	change_column :player_game_subdata, :completedPasses, :integer, default: 0
  	change_column :player_game_subdata, :corners, :integer, default: 0
  	change_column :player_game_subdata, :crosses, :integer, default: 0
  	change_column :player_game_subdata, :clearings, :integer, default: 0
  	change_column :player_game_subdata, :longBalls, :integer, default: 0
  	change_column :player_game_subdata, :thruBalls, :integer, default: 0
  	change_column :player_game_subdata, :keyPasses, :integer, default: 0
  	change_column :player_game_subdata, :turnovers, :integer, default: 0
  	change_column :player_game_subdata, :offsides, :integer, default: 0
  	change_column :player_game_subdata, :dribbles, :integer, default: 0
  	change_column :player_game_subdata, :dispossessed, :integer, default: 0
  	change_column :player_game_subdata, :fouled, :integer, default: 0
  	change_column :player_game_subdata, :shots, :integer, default: 0
  	change_column :player_game_subdata, :shotsOnTarget, :integer, default: 0
  	change_column :player_game_subdata, :assists, :integer, default: 0
  	change_column :player_game_subdata, :goals, :integer, default: 0
  	change_column :player_game_subdata, :fiftyFiftiesWon, :integer, default: 0
  	change_column :player_game_subdata, :tackles, :integer, default: 0
  	change_column :player_game_subdata, :dribblePast, :integer, default: 0
  	change_column :player_game_subdata, :interceptions, :integer, default: 0
  	change_column :player_game_subdata, :recoveries, :integer, default: 0
  	change_column :player_game_subdata, :blockedShots, :integer, default: 0
  	change_column :player_game_subdata, :ownGoals, :integer, default: 0
  	change_column :player_game_subdata, :saves, :integer, default: 0
  	change_column :player_game_subdata, :fouls, :integer, default: 0
  	change_column :player_game_subdata, :yellowCards, :integer, default: 0
  	change_column :player_game_subdata, :redCards, :integer, default: 0
  end
end
