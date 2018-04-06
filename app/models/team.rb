class Team < ApplicationRecord
	has_and_belongs_to_many :players

	has_many :home_games, class_name: "Game"
	has_many :away_games, class_name: "Game"

	belongs_to :club_type
end
