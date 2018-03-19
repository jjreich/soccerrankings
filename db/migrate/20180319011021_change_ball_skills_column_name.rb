class ChangeBallSkillsColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :player_ball_skills, :dribbline, :dribbling
  end
end
