class Organization < ApplicationRecord
  has_many :users
  has_many :user_organizations
  has_many :shifts, through: :user_organizations
end
