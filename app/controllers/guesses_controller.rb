post '/guesses/new' do
  @card = Card.find_by(id: params[:sampled_card_id])
  @guess = Guess.create(user_id: session[:user_id], round_id: params[:round_id], correct?: @card.is_correct(params[:human_answer], params[:card_answer]), card_id: @card.id)
  redirect "/guesses/#{@guess.id}"
end

get '/guesses/new' do
  @guess = Guess.find_by(id: params[:previous_guess_id]) #previous guess
  @round = Round.find_by(id: @guess.round_id) #current round
  @deck = Deck.find_by(id: @round.deck_id)
  @sampled_card = @round.get_next_card(@guess)
  @correct_first_time = @round.correct_first_time(@deck)
  @stats = @round.stats(@deck)

  erb :'/cards/show'
end

get '/guesses/:id' do
  @guess = Guess.find_by(id: params[:id])
  @round = Round.find_by(id: @guess.round_id)
  @answer = @guess.correct?
  @card = Card.find_by(id: @guess.card_id)
  # @wrong_count = @guess.wrong_count(@answer, @round)

  erb :'/cards/show_answer'
end


