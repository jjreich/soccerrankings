class AddDateToPlayerBallSkills < ActiveRecord::Migration[5.1]
  def change
  	add_column :player_ball_skills, :skillsTestDate, :date
  end
end
