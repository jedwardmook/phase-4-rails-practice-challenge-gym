class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :my_memberships
end
