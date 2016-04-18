get '/deck/cards' do
  @cards = Card.all
  erb :'cards/show'
end

post '/deck/card/:id' do
  params[:answer]
end
