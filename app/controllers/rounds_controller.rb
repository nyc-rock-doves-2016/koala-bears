get '/rounds/deck/:id' do
  @deck = Deck.find_by(id: params[:id])
  @round = Round.create(user_id: session[:user_id], deck_id: @deck.id)
  @sampled_card = (@deck.cards).sample

  erb :'/cards/show'
end

