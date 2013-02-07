class ChangePartLastPriceToFloat < ActiveRecord::Migration
  def up
  	change_column :parts, :last_price, :float
  end

  def down
  	change_column :parts, :last_price, :decimal
  end
end
