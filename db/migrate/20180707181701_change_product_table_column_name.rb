class ChangeProductTableColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :products, :name, :product_name
  end
end
