class PlayerGameSubdatum < ApplicationRecord
	def passingPercentage
		if (attemptedPasses>0)
        	completedPasses.to_f / attemptedPasses * 100
        else
        	0
        end
    end
end
