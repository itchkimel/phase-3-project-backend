class CreateGuitars < ActiveRecord::Migration[6.1]
  def change
    create_table :guitars do |t|
      t.string :brand
      t.integer :price
      t.string :material
      t.string :color
      t.boolean :left_handed
    end  
  end
end
