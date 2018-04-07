class AddDataElementsToGames < ActiveRecord::Migration[5.1]
  def change
  	add_column :games, :home_team_score, :integer
  	add_column :games, :away_team_score, :integer
  	add_column :games, :total_min_played, :integer
  	add_column :games, :game_type, :string
  end
end
