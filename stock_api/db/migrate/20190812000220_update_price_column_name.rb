class UpdatePriceColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :prices, :price, :value
  end
end
