class User < ActiveRecord::Base
  # Remember to create a migration!
has_secure_password
has_many :decks, foreign_key: :creator_id
has_many :rounds
validates :username, :email, presence: true
validates :username, :email, uniqueness: true

end
