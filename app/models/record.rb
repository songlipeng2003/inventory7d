class Record < ActiveRecord::Base
  IO_TYPES = { 1 => '入库', -1 => '出库' }
  ACT_TYPES = { 1 => '入库', 2 => '出库', 3 => '盘盈', 4 => '盘亏' }

  belongs_to :warehouse
  belongs_to :product

  validates :warehouse, :presence => true
  validates :product, :presence => true
  validates :number, :presence => true,  :numericality => { :only_integer => true, :greater_than => 0 }
  validates :io_type, :inclusion => { :in => IO_TYPES.keys }
  validates :act_type, :inclusion => { :in => ACT_TYPES.keys }
  validates :note , :length => { :maximum => 255 }
  validates_associated :warehouse
  validates_associated :product
end
