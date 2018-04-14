class Player < ApplicationRecord
	has_and_belongs_to_many :teams
	has_many :player_game_subdata

	def fiveGameAverage
		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).includes(:game).order("games.game_date_time desc")

		player_game_count = played_game_ratings.count

		playerStatsTotal = 0
		played_game_ratings.each do |playerStats|
			playerStatsTotal += playerStats.gameRating
		end
	
		if (player_game_count == 0)
			fiveGameAverage = 0
		else
			fiveGameAverage = playerStatsTotal / player_game_count
		end
	end

	def tenGameAverage

	end
end
