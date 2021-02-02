class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :position, :real_mlb_team, :years, :salary_per_year
  has_one :team
end
