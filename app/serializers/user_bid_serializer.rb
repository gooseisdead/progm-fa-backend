class UserBidSerializer < ActiveModel::Serializer
  attributes :id, :bid_id, :user_id
  belongs_to :user
  belongs_to :bid
end
