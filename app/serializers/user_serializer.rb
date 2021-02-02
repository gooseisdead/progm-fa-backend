class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :team
  has_one :team
  has_many :user_bids
  has_many :bids, through: :user_bids

end
