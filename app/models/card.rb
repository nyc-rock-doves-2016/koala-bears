class Card < ActiveRecord::Base
  belongs_to :deck


  def is_correct(human_guess, card_answer)
    human_guess == card_answer
  end


end
