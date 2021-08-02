class Shift < ApplicationRecord
  belongs_to :user_organization
  has_one :user, :through => :user_organization
  has_one :organization, :through => :user_organization

  def hours_worked
    (finish - start) / 3600
  end

  def shift_cost
    hours_worked * organization.hourly_rate
  end
end
