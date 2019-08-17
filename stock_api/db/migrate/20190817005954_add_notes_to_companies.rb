class AddNotesToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :notes, :string
  end
end
