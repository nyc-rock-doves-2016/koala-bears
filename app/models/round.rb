class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  def get_next_card(guess)
    # game_over = false
    correct_guess_array = Guess.all.where(correct?: "t")
    correct_card_array = []
    correct_guess_array.each do |guess|
      correct_card_array << Card.find_by(id: guess.card_id)
    end
    all_cards = Card.all.to_a
    if all_cards.length == correct_card_array.length
      # game_over = true
      return false
    else
      (all_cards - correct_card_array).sample
    end
  end

  def correct_first_time(deck)
    incorrect_guess_array = Guess.all.where(correct?: "f")
    incorrect_card_array = []
    incorrect_guess_array.each do |guess|
      incorrect_card_array << Card.find_by(id: guess.card_id)
    end
    all_cards = Card.all.to_a
    (all_cards - incorrect_card_array).length
  end

  def stats(deck)
    @stats = correct_first_time(deck)
  end

end
