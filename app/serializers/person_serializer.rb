class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pets, include: true, embed: :ids
end
