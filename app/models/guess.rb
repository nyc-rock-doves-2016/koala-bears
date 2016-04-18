class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card
  belongs_to :user


  # def wrong_count(answer, round)
  # 	if answer == "f"
  # 		round.stats.to_i = 
  # 	end
  # end
end
