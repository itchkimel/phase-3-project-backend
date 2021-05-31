class Customer < ActiveRecord::Base
  has_many :customers
  has_many :guitars, through: :carts
end  
