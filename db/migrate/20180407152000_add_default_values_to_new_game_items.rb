class AddDefaultValuesToNewGameItems < ActiveRecord::Migration[5.1]
  def change
  	change_column :games, :home_team_score, :integer, default: 0
  	change_column :games, :away_team_score, :integer, default: 0
  	change_column :games, :total_min_played, :integer, default: 0
  end
end
