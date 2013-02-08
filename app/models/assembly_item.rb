class AssemblyItem < ActiveRecord::Base

  belongs_to :assembly
  belongs_to :assemblable, :polymorphic => true

  attr_accessible :amount, :assemblable_id, :bottom, :comments, :position,
                  :assemblable, :assembly, :assembly_id, :assemblable_type

  validates :assembly_id, :assemblable_id, :assemblable_type, :presence => true

end
