class Player < ApplicationRecord
	has_and_belongs_to_many :teams
	has_many :player_game_subdata

	def fiveGameAverage
		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).pluck(:gameRating)
	
		fiveGameAverage = played_game_ratings.gameRating
	end

	def tenGameAverage

	end
end
