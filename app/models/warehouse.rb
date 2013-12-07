class Warehouse < ActiveRecord::Base
    validates :name, :presence => true, :length => { maximum: 32 }
    validates :description, :length => { maximum: 32 }
end
