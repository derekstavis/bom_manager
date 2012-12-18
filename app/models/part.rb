class Part < ActiveRecord::Base
  attr_accessible :amount, :description, :last_price, :last_volume, :ncm, :place, :title, :vendor_parts_attributes
  has_many :vendor_parts
  has_many :vendors, :through => :vendor_parts
  accepts_nested_attributes_for :vendor_parts, :allow_destroy => true
end
