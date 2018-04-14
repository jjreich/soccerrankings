class PlayerGameSubdatum < ApplicationRecord
    belongs_to :game
    belongs_to :player

	def passingPercentage
		if (attemptedPasses>0)
        	completedPasses.to_f / attemptedPasses * 100
        else
        	0
        end
    end

    def opponent

    	game = Game.find(game_id)
    	
    	if game.home_team_id == team_id
    		opponent_id = game.away_team_id
    	else
    		opponent_id = game.home_team_id
    	end

    	opponent = Team.find(opponent_id)
    end

    def gameScoreBonus
        game = Game.find(game_id)

        if game.home_team_id == team_id
            homeTeam = true
            awayTeam = false
        else
            homeTeam = false
            awayTeam = true
        end

        if (homeTeam && game.away_team_score == 0)
            cleanSheetPartial = 2
        elsif (awayTeam && game.home_team_score == 0)
            cleanSheetPartial = 2
        else
            cleanSheetPartial = 0
        end

        if (game.away_team_score == game.home_team_score)
            finalScorePartial = 1
        elsif ((homeTeam && game.home_team_score > game.away_team_score) || (awayTeam && game.away_team_score > game.home_team_score))
            finalScorePartial = 3
        elsif ((awayTeam && game.home_team_score > game.away_team_score) || (homeTeam && game.away_team_score > game.home_team_score))
            finalScorePartial = 0
        end
        
        if (game.total_min_played > 0)    
            gameScoreBonus = (minutes / game.total_min_played) * (cleanSheetPartial + finalScorePartial)
        else
            gameScoreBonus = 0
        end
    end

    def gameRating
    	
        if (minutes > 0)
            opponentRating = opponent.club_type.score
        else 
            opponentRating = 0
        end

        if (started == true)
            startedBonus = 1
        else
            startedBonus = 0
        end 

    	passingRating = passingPercentage * completedPasses * 0.002
    	significantPassingRating = (corners + crosses + (clearings * 0.5) + (longBalls * 0.5) + thruBalls) * 0.5
    	keyPassRating = keyPasses * 1
    	turnoverRating = turnovers * -0.3
    	dribbleRating = dribbles * 0.3
    	dispossessedRating = dispossessed * -0.3
    	fouledRating = fouled * 0.5
    	shotsRating = (shots - shotsOnTarget) * -0.1
    	shotsOnTargetRating = (shotsOnTarget-goals) * 0.2
    	
    	if assists==0
    		assistRating=0
    	elsif assists==1
    		assistRating = 2
    	elsif assists==2
    		assistRating = 5
    	elsif assists>2
    		assistRating = 5 + (assists-2)*4
    	end	

    	if goals==0
    		goalRating=0
    	elsif goals==1
    		goalRating = 3
    	elsif goals==2
    		goalRating = 7
    	elsif goals>2
    		goalRating = 7 + (goals-2)*5
    	end
    		
    	fiftyFiftyRating = fiftyFiftiesWon * 0.3
    	tackleRating = tackles * 0.6
    	dribblePastRating = dribblePast * -0.75
    	interceptionRating = interceptions * 0.3
    	recoveriesRating = recoveries * 0.2
    	blockedShotRating = blockedShots * 0.5
    	ownGoalRating = ownGoals * -5.0
   		savesRating = saves * 1.5
        highCatchesRating = highCatches * 0.5
        goalsAgainstRating = goalsAgainst * -3
   		foulsRating = (fouls * -0.5) + (yellowCards * -3) + (redCards * -6)
   		offsideRating = offsides * -0.5

   		offensiveRating = passingRating + significantPassingRating + keyPassRating + turnoverRating + dribbleRating + dispossessedRating + fouledRating + shotsRating + shotsOnTargetRating + goalRating + assistRating + offsideRating
    	defensiveRating = fiftyFiftyRating + tackleRating + dribblePastRating + interceptionRating + recoveriesRating + blockedShotRating + ownGoalRating + foulsRating + savesRating + goalsAgainstRating + highCatchesRating
    	gameRating = opponentRating + offensiveRating + defensiveRating + gameScoreBonus + startedBonus
    end
end
