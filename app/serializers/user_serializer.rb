class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :team
  has_one :team
  has_many :bids
end
