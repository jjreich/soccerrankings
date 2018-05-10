class Player < ApplicationRecord
	has_and_belongs_to_many :teams
	has_and_belongs_to_many :positions
	has_many :player_game_subdata

	def fullName
		fullName = firstName + " " + lastName
	end

	def days_since_last_game
		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).joins(:game).order("games.game_date_time desc")
		player_game_count = played_game_ratings.count
		if player_game_count == 0
			days_since_last_game = "unknown"
		else
			last_game_rating = played_game_ratings.first
			last_game = Game.find(last_game_rating.game_id)
			last_game_date = last_game.game_date_time
			days_since_last_game = ((Time.now-last_game_date)/1.day).floor	
		end
	end 

	def fiveGameAverage
		if PlayerGameSubdatum.where(:player_id => id).count<8
			averageValue = 3
		elsif PlayerGameSubdatum.where(:player_id => id).count<11
			averageValue = 4
		else
			averageValue = 5
		end

		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).joins(:game).order("games.game_date_time desc").limit(averageValue)

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
		if PlayerGameSubdatum.where(:player_id => id).count<25
			averageValue = PlayerGameSubdatum.where(:player_id => id).count
			else
			averageValue = 25
		end

		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).joins(:game).order("games.game_date_time desc").limit(averageValue)

		player_game_count = played_game_ratings.count

		playerStatsTotal = 0
		played_game_ratings.each do |playerStats|
			playerStatsTotal += playerStats.gameRating
		end
	
		if (player_game_count == 0)
			twentyGameAverage = 0
		else
			if (days_since_last_game >14)
				last_game_adjustment = (days_since_last_game-14)/7
			else
				last_game_adjustment = 0
			end
			twentyGameAverage = playerStatsTotal / player_game_count - last_game_adjustment
		end
	end

	def self.sorted_by_twentyGameAverage
  		Player.all.sort_by(&:twentyGameAverage).reverse
	end

	def form_status
		played_game_ratings = PlayerGameSubdatum.where(:player_id => id).joins(:game).order("games.game_date_time desc")
		player_game_count = played_game_ratings.count
		if (player_game_count == 0)
			form_status = 0
		else

			if (days_since_last_game >14)
					last_game_adjustment = (days_since_last_game-14)/7
			else
				last_game_adjustment = 0
			end
			form_status = fiveGameAverage - twentyGameAverage - (2 * last_game_adjustment)
		end
	end
end
