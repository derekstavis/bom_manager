class Vendor < ActiveRecord::Base
  attr_accessible :name
  has_many :vendor_parts
  has_many :parts, :through => :vendor_parts
  has_and_belongs_to_many :distributors
end
