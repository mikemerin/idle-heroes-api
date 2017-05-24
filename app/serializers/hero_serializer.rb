class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :faction, :role, :skills
  has_one :stat
end
