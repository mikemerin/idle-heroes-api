class StatSerializer < ActiveModel::Serializer
  attributes :id, :attack, :health, :armor, :speed
end
