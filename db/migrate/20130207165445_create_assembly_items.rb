class CreateAssemblyItems < ActiveRecord::Migration
  def change
    create_table :assembly_items do |t|
      t.references :assembly
      t.integer :assemblable_id
      t.string :assemblable_type
      t.string :position
      t.integer :amount
      t.text :comments
      t.boolean :bottom

      t.timestamps
    end
    add_index :assembly_items, :assembly_id
  end
end
