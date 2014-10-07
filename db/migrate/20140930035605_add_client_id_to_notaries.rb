class AddClientIdToNotaries < ActiveRecord::Migration
  def change
    add_column :notaries, :client_id, :integer
  end
end
