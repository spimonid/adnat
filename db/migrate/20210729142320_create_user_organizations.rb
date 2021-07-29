class CreateUserOrganizations < ActiveRecord::Migration[6.1]
  def change
    create_table :user_organizations do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :organization, foreign_key: true
      t.timestamps
    end
  end
end
