class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user

  def get_next_card(guess)
    previous_guess = Guess.find_by(id: guess.id)

    previous_card = Card.find_by(id: previous_guess.card_id)
    cards_in_deck_array = Card.where(deck_id: previous_card.deck_id).to_a

    previous_card = previous_card(previous_guess)
    cards_in_deck_array.delete(previous_card)

    new_sampled_card = cards_in_deck_array.sample
  end


  def previous_card(previous_guess)
    Card.find_by(id: previous_guess.card_id)
  end
end
