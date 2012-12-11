class CreateVendorParts < ActiveRecord::Migration
  def change
    create_table :vendor_parts do |t|
      t.references :vendor
      t.references :part
      t.string :part_number

      t.timestamps
    end
    add_index :vendor_parts, :vendor_id
    add_index :vendor_parts, :part_id
  end
end
