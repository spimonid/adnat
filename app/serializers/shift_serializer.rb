class ShiftSerializer < ActiveModel::Serializer
  attributes :id, :start, :finish, :break_length, :shift_cost, :hours_worked, :user, :organization
end
