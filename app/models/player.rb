class Player < ApplicationRecord
	has_and_belongs_to_many :teams
	has_many :player_game_subdata

	def fullName
		fullName = firstName + " " + lastName
	end

	def fiveGameAverage
		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).joins(:game).order("games.game_date_time desc").limit(3)

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

	def twentyGameAverage
		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).joins(:game).order("games.game_date_time desc").limit(10)

		player_game_count = played_game_ratings.count

		playerStatsTotal = 0
		played_game_ratings.each do |playerStats|
			playerStatsTotal += playerStats.gameRating
		end
	
		if (player_game_count == 0)
			twentyGameAverage = 0
		else
			twentyGameAverage = playerStatsTotal / player_game_count
		end
	end

	def self.sorted_by_twentyGameAverage
  		Player.all.sort_by(&:twentyGameAverage).reverse
	end
end
