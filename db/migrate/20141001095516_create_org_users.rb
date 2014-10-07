class CreateOrgUsers < ActiveRecord::Migration
  def change
    create_table :org_users do |t|
      t.integer :user_id
      t.integer :organization_id
      t.string :role
      t.string :type

      t.timestamps
    end
  end
end
