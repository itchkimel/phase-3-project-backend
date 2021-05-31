class AddImageToGuitars < ActiveRecord::Migration[6.1]
  def change
    add_column :guitars, :image, :string
  end
end
