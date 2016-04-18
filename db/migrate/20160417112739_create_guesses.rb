class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :card_id, null: false
      t.integer :user_id
      t.integer :round_id, null: false
      t.string :correct?

      t.timestamps null: false
    end
  end
end
