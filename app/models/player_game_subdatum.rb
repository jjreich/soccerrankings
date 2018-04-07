class PlayerGameSubdatum < ApplicationRecord
	def passingPercentage
		if (attemptedPasses>0)
        	completedPasses.to_f / attemptedPasses * 100
        else
        	0
        end
    end

    def gameRating
    	passingRating = passingPercentage * completedPasses * 0.002
    	significantPassingRating = (corners + crosses + clearings + longBalls + thruBalls) * 0.5
    	keyPassRating = keyPasses * 1
    	turnoverRating = turnovers * -0.3
    	dribbleRating = dribbles * 0.3
    	dispossessedRating = dispossessed * -0.3
    	fouledRating = fouled * 1
    	shotsRating = (shots - shotsOnTarget) * -0.1
    	shotsOnTargetRating = shotsOnTarget * 0.2
    	assistRating = assists * 3
    	goalRating = goals * 5
    	fiftyFiftyRating = fiftyFiftiesWon * 0.3
    	tackleRating = tackles * 0.6
    	dribblePastRating = dribblePast * -0.75
    	interceptionRating = interceptions * 0.4
    	recoveriesRating = recoveries * 0.2
    	blockedShotRating = blockedShots * 0.5
    	ownGoalRating = ownGoals * -5.0
   		savesRating = saves * 2
   		foulsRating = (fouls * -1) + (yellowCards * -5) + (redCards * -10)
   		offsideRating = offsides * -0.5

   		offensiveRating = passingRating + significantPassingRating + keyPassRating + turnoverRating + dribbleRating + dispossessedRating + fouledRating + shotsRating + shotsOnTargetRating + goalRating + assistRating + offsideRating
    	defensiveRating = fiftyFiftyRating + tackleRating + dribblePastRating + interceptionRating + recoveriesRating + blockedShotRating + ownGoalRating + foulsRating + savesRating
    	gameRating = offensiveRating + defensiveRating
    end
end
