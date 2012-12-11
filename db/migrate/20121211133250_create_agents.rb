class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :role
      t.references :distributor

      t.timestamps
    end
    add_index :agents, :distributor_id
  end
end
