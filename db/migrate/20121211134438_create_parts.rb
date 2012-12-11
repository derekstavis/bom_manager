class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :amount
      t.text :description
      t.decimal :last_price
      t.integer :last_volume
      t.string :ncm
      t.string :place
      t.string :title

      t.timestamps
    end
  end
end
