class CreateJoinTableGameTeam < ActiveRecord::Migration[5.1]
  def change
  	create_join_table :games, :teams do |t|
      t.index [:game_id, :team_id]
    end
  end
end