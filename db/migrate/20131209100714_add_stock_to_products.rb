class AddStockToProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
        t.integer :stock, :default => 0
    end
  end
end
