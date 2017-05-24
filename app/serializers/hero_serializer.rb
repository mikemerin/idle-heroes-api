class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :faction, :role, :stats_id, :skills
end
