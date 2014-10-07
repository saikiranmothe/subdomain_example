class AddDomianNameToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :domain_name, :string
  end
end
