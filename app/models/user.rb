class User < ApplicationRecord
  has_many :user_organizations
  has_many :organizations, through: :user_organizations
  has_many :shifts, through: :user_organizations

  has_secure_password
end
