class AddTakeIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :take_id, :integer
  end
end
