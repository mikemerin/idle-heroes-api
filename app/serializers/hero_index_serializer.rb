class HeroIndexSerializer < ActiveModel::Serializer
  attributes :id, :name, :faction, :role, :skills
end
