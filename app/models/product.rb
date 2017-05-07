class Product < ApplicationRecord
  belongs_to :category
  belongs_to :platform
  has_many :order_items

  mount_uploader :picture, PictureUploader

end
