class Agent < ActiveRecord::Base
  belongs_to :distributor
  attr_accessible :email, :name, :phone, :role, :distributor
end
