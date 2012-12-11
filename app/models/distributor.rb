class Distributor < ActiveRecord::Base
  attr_accessible :email, :name, :phone
  has_and_belongs_to_many :vendors
  has_many :agents
end
