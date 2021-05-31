class Cart < ActiveRecord::Base
  belongs_to :guitar
  belongs_to :user
end  