class StatSerializer < ActiveModel::Serializer
  attributes :attack, :health, :armor, :speed
end
