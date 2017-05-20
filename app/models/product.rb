class Product < ApplicationRecord
  belongs_to :category
  belongs_to :platform
  has_many :order_items

  mount_uploaders :picture, PictureUploader
  serialize :picture, JSON
end
