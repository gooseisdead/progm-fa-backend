class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :total_salary, :playoff_discount
  has_one :user
end
