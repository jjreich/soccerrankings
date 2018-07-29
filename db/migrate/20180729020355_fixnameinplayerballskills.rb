class Fixnameinplayerballskills < ActiveRecord::Migration[5.1]
  def change
  	rename_column :player_ball_skills, :thirtyYardSpring, :thirtyYardSprint
  end
end
