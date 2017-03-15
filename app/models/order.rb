class Order < ApplicationRecord
  belongs_to :shipping
  belongs_to :order_status
  belongs_to :user
end
