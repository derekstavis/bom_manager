class ChangeAssemblyNameToTitle < ActiveRecord::Migration
  def up
  	rename_column :assemblies, :name, :title
  end

  def down
  	rename_column :assemblies, :title, :name
  end
end
