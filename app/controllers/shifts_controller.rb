class ShiftsController < ApplicationController
  def create
    date = params["shift_date"]
    user_id = params["user_id"]
    organization_id = params["organization_id"]
    user_organization = UserOrganization.find_by(user_id: user_id, organization_id: organization_id)
    start = DateTime.parse(date + " " + params["start"])
    finish = DateTime.parse(date + " " + params["finish"])
    shift = Shift.new(
      start: start,
      finish: finish,
      break_length: params["break_length"],
      user_organization_id: user_organization.id,
    )
    if shift.save
      render json: shift
    else
      render json: { errors: shift.errors.full_messages }, status: 422
    end
  end
end
