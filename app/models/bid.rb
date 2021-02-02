class Bid < ApplicationRecord
  belongs_to :player
  has_many :user_bids
  has_many :users, through: :user_bids
end
