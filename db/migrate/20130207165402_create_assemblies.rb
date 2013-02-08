class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.string :name
      t.text :description
      t.string :ncm
      t.string :place
      t.integer :amount

      t.timestamps
    end
  end
end
