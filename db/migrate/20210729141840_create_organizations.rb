class CreateOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.decimal :hourly_rate, precision: 9, scale: 2

      t.timestamps
    end
  end
end
