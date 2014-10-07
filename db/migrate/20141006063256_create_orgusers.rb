class CreateOrgusers < ActiveRecord::Migration
  def change
    create_table :orgusers do |t|
      t.boolean :org_admin
      t.string :role
      t.integer :organization_id
      t.integer :user_id

      t.timestamps
    end
  end
end
