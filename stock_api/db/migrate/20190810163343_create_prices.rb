class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.integer :price
      t.integer :company_id

      t.timestamps
    end
  end
end
