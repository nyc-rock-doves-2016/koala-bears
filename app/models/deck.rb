class Deck < ActiveRecord::Base
  # has_many :cards, :rounds
  belongs_to :creator, class_name: 'User'
  has_many :cards
  has_many :rounds
end
