class BidSerializer < ActiveModel::Serializer
  attributes :id, :years, :salary_per_year, :users
  has_one :player
  has_many :user_bids
  has_many :users, through: :user_bids
end
