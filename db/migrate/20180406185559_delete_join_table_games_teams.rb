class DeleteJoinTableGamesTeams < ActiveRecord::Migration[5.1]
  def change
  	drop_table :games_teams
  end
end
