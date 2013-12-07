class Product < ActiveRecord::Base
  validates :sn, :format => { with: /\d+/, message: "必须全部为数字" }
  validates :name, :presence => true, :length => { maximum: 32 }
  validates :description, :length => { maximum: 255 }
end
