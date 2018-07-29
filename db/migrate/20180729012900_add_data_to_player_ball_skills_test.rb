class AddDataToPlayerBallSkillsTest < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_ball_skills, :twentyYardShuttle, :float
  	add_column :player_ball_skills, :thirtyYardSpring, :float
  	add_column :player_ball_skills, :verticalLeap, :float
  end
end
