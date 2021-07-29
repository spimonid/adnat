class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.datetime :start
      t.datetime :finish
      t.integer :break_length
      t.belongs_to :user_organization, foreign_key: true
      t.timestamps
    end
  end
end
