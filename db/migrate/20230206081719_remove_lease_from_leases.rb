class RemoveLeaseFromLeases < ActiveRecord::Migration[6.1]
  def change
    remove_column :leases, :lease
  end
end
