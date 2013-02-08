class Assembly < ActiveRecord::Base

  has_many :assembly_items
  has_many :assemblables, :as => :assemblable

  attr_accessible :amount, :description, :title, :ncm, :place

end
