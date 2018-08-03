class CreateProductCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :product_categories do |t|
      t.string :category
      t.integer :admin

      t.timestamps
    end
  end
end
