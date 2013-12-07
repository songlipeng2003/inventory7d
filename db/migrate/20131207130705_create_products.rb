class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sn
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
