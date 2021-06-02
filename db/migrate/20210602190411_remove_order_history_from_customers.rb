class RemoveOrderHistoryFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :order_history, :string
  end
end
