class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :shifts
  has_many :shifts
end
