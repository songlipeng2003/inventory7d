class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.references :warehouse, index: true
      t.references :product, index: true
      t.integer :number, :default => 0

      t.timestamps
    end
  end
end
