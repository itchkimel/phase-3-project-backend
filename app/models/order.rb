class Order < ActiveRecord::Base
  belongs_to :guitar
  belongs_to :customer
end