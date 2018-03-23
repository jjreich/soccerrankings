class Team < ApplicationRecord
	has_and_belongs_to_many :players
	has_and_belongs_to_many :games
	belongs_to :club_type
end
