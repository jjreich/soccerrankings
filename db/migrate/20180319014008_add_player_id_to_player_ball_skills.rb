class AddPlayerIdToPlayerBallSkills < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_ball_skills, :player_id, :integer
  	add_index :player_ball_skills, :player_id
  end
end
