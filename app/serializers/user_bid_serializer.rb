class UserBidSerializer < ActiveModel::Serializer
  attributes :id, :bid
  belongs_to :user
  belongs_to :bid
end
