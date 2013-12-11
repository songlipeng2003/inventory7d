class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.references :warehouse, index: true
      t.references :product, index: true
      t.integer :io_type
      t.integer :number
      t.integer :act_type
      t.string :note

      t.timestamps
    end
  end
end
