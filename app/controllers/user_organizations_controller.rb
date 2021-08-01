class UserOrganizationsController < ApplicationController
  def index
    user_organizations = UserOrganization.where(user_id: current_user.id)
    render json: user_organizations
  end

  def show
    user_organization = UserOrganization.find_by(id: params["id"])
    render json: user_organization
  end

  def create
    user_organization = UserOrganization.new(
      user_id: current_user.id,
      organization_id: params["organization_id"],
    )
    if user_organization.save
      render json: user_organization.as_json
    else
      render json: { errors: user_organization.errors.full_messages }, status: 422
    end
  end

  def leave_org
    user_organization = UserOrganization.find_by(user_id: current_user.id, organization_id: params["organization_id"])
    user_organization.destroy
  end
end
