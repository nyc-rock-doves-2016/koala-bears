get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  erb :'decks/show'
end
