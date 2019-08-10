class AddDateToPrice < ActiveRecord::Migration[6.0]
  def change
    add_column :prices, :date, :date
  end
end
