Card.delete_all
User.delete_all
Deck.delete_all
Round.delete_all
Guess.delete_all


Deck.create(name: "Literature", creator_id: 1)
Card.create(deck_id: 1, question: "What was the original title of Fahrenheit 451?", answer: "The Fireman")
Card.create(deck_id: 1, question: "What is the best-selling novel of all time?", answer: "Don Quixote")
Card.create(deck_id: 1, question: "What type of bird did Edgar Allan Poe originally want to repeat the word 'nevermore'?", answer: "Parrot")
Card.create(deck_id: 1, question: "who was the first publisher willing to print copies of 'Lolita'?", answer: "Olympia Press")
Card.create(deck_id: 1, question: "What animal ate John Steinbeck's original manuscript for 'Of Mice and Men?'", answer: "Dog")