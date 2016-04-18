class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user

  def get_next_card(guess)

    correct_guess_array = Guess.all.where(correct?: "t")
    correct_card_array = []
    correct_guess_array.each do |guess|
      correct_card_array << Card.find_by(id: guess.card_id)
    end
    all_cards = Card.all.to_a
    (all_cards - correct_card_array).sample
  end
end
