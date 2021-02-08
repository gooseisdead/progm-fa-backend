class BidSerializer < ActiveModel::Serializer
  attributes :id, :years, :salary_per_year, :created_at, :player_id, :user_id
  belongs_to :player
  belongs_to :user
end
