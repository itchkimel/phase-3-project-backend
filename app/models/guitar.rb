class Guitar < ActiveRecord::Base
  has_many :guitars
  has_many :customers, through: :carts
end  