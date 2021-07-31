class UserOrganizationsController < ApplicationController
  def index
    user_organizations = UserOrganization.where(user_id: current_user.id, status: "active")
    render json: user_organizations
  end

  def create
    user_organization = SavedJob.new(
      user_id: current_user.id,
      organization_id: params["organization_id"],
      status: "active",
    )
    if user_organization.save
      render json: user_organization.as_json
    else
      render json: { errors: user_organization.errors.full_messages }, status: 422
    end
  end
end
