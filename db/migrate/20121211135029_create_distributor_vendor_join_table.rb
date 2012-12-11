class CreateDistributorVendorJoinTable < ActiveRecord::Migration
  def up
  	create_table :distributors_vendors, :id => false do |t|
  		t.integer :distributor_id
  		t.integer :vendor_id
  	end
  end

  def down
  	drop_table :distributors_vendors
  end
end
