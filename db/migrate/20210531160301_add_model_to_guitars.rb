class AddModelToGuitars < ActiveRecord::Migration[6.1]
  def change
    add_column :guitars, :model, :string
  end
end
