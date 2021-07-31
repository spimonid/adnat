class OrganizationsController < ApplicationController
  def index
    render json: Organization.all
  end

  def update
    organization = Organization.find_by(id: params["id"])
    organization.name = params["name"] || organization.name
    organization.hourly_rate = params["hourly_rate"] || organization.hourly_rate

    if organization.save
      render json: organization
    else
      render json: { errors: organization.errors.full_messages }, status: 422
    end
  end
end
