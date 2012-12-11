class Part < ActiveRecord::Base
  attr_accessible :amount, :description, :last_price, :last_volume, :ncm, :place, :title
  has_many :vendor_parts
  has_many :vendors, :through => :vendor_parts
end
