class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :real_mlb_team, :years, :salary_per_year, :minor_league_status, :bid_ids
  has_one :team
  has_many :bids
end
